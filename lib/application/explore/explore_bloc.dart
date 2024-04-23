import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_latest/get_latest.dart';
import 'package:film_mate/domain/services/explore_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explore_event.dart';
part 'explore_state.dart';
part 'explore_bloc.freezed.dart';

@injectable
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  final ExploreServices _exploreServices;
  ExploreBloc(this._exploreServices) : super(ExploreState.initial()) {
    on<_ChangeTab>((event, emit) {
      if (state.selectedTab == event.index) {
        return;
      }
      emit(state.copyWith(selectedTab: event.index));
    });
    on<_GetLatestMovies>((event, emit) async {
      if (state.latestMovies.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));
      final result = await _exploreServices.getLatestMovies(lang: event.lang);
      log(result.toString());
      result.fold((MainFailure failure) {
        emit(state.copyWith(isError: true, isLoading: false, latestMovies: []));
      }, (GetLatest success) {
        // Filter the success.result list
        final filteredMovies = success.result
            .where((movie) => movie.backdropPath != null && movie.video != null)
            .toList();
        emit(state.copyWith(
            isError: false, isLoading: false, latestMovies: filteredMovies));
      });
    });
  }
}
