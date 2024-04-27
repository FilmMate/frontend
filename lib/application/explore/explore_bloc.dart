import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_latest/get_latest.dart';
import 'package:film_mate/domain/models/get_latest_tv/get_latest_tv.dart';
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

    // to stop playing video if detail page is triggered
    on<_TriggerDetail>((event, emit) async {
      emit(state.copyWith(isDetailTriggered: event.trigger));
    });

    // latest tv body
    on<_GetLatestTV>((event, emit) async {
      if (state.latestTV.isNotEmpty) {
        return;
      }
      emit(state.copyWith(isErrorTV: false, isLoadingTV: true));

      List<GetLatestTvResponse> combinedResults = [];

      final result = await _exploreServices.getLatestTV();
      result.fold(
        (MainFailure failure) {
          log('TV -> failure');
          emit(
            state.copyWith(isErrorTV: true, isLoadingTV: false),
          );
        },
        (GetLatestTv success) {
          log("TV -> success");
          // Filter the success.result list
          final filteredMovies = success.result
              .where(
                  (movie) => movie.backdropPath != null && movie.video != null)
              .toList();
          combinedResults.addAll(filteredMovies);
          emit(state.copyWith(
            isErrorTV: false, // Set isError if no valid movies found
            isLoadingTV: false,
            latestTV: combinedResults,
          ));
        },
      );
    });

    // everyone's watching body
    on<_GetLatestMovies>((event, emit) async {
      if (state.latestMovies.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isLoadingMovie: true,
        isErrorMovie: false,
      ));

      // Define a list to collect filtered and combined results
      List<GetLatestResponse> combinedResults = [];

      // Helper function to filter and add valid results to the combined list
      Future<void> addValidResult(String lang) async {
        final result = await _exploreServices.getLatestMovies(lang: lang);
        result.fold(
          (MainFailure failure) {
            log('Error fetching latest movies for language $lang: $failure');
            emit(
              state.copyWith(isErrorMovie: true, isLoadingMovie: false),
            );
          },
          (GetLatest success) {
            // Filter the success.result list
            final filteredMovies = success.result
                .where((movie) =>
                    movie.backdropPath != null && movie.video != null)
                .toList();
            combinedResults.addAll(filteredMovies);
          },
        );
      }

      // Add and filter results for each language
      await addValidResult(event.lang); // result
      await addValidResult('en'); // result2
      await addValidResult('hi'); // result3
      await addValidResult('ta'); // result4

      // Emit the updated state with combined and filtered movies
      emit(state.copyWith(
        isErrorMovie: false, // Set isError if no valid movies found
        isLoadingMovie: false,
        latestMovies: combinedResults,
      ));
    });
  }
}
