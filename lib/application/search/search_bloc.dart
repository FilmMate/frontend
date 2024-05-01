import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/services/search_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchServices _searchServices;
  SearchBloc(this._searchServices) : super(SearchState.initial()) {
    on<_Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isError: false,
        isLoading: true,
      ));

      final result = await _searchServices.getTrending();

      result.fold((MainFailure failure) {
        log('IdleList -> failure');
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
          ),
        );
      }, (TMDB success) {
        log("IdleList -> success");
        // Filter the success.result list
        final filteredMovies = success.results
            .where((media) => media.backdropPath != null)
            .toList();
        filteredMovies.shuffle();
        emit(state.copyWith(
          isError: false,
          isLoading: false,
          idleList: filteredMovies,
        ));
      });
    });

    on<_TiggerSearch>((event, emit) async {
      if (event.query.isEmpty) {
        emit(state.copyWith(resultList: [], noResult: false));
        return;
      }
      emit(state.copyWith(isError: false, isLoading: true, noResult: false));

      final result = await _searchServices.getSearchResult(query: event.query);
      result.fold((MainFailure failure) {
        log('ResultList -> failure');
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Result -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        if (event.query.isNotEmpty && filteredMovies.isEmpty) {
          emit(
              state.copyWith(noResult: true, isLoading: false, isError: false));
          return;
        }
        emit(state.copyWith(
          isError: false,
          isLoading: false,
          resultList: filteredMovies,
        ));
      });
    });
  }
}
