import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/services/home_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices _homeServices;
  HomeBloc(this._homeServices) : super(HomeState.initial()) {
    on<_ChangeIndicator>((event, emit) {
      if (state.carouselIndex == event.index) {
        return;
      }
      emit(state.copyWith(
        carouselIndex: event.index,
      ));
    });

    on<_GetCarouselPosters>((event, emit) async {
      if (state.carouselList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isCarouselLoading: true,
        isCarouselError: false,
      ));

      final result = await _homeServices.getNowPlaying();
      result.fold((MainFailure failure) {
        log('Carousel Poster -> failure');
        emit(
          state.copyWith(
            isCarouselError: true,
            isCarouselLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Carousel Poster -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        filteredMovies.shuffle();
        emit(state.copyWith(
          isCarouselError: false,
          isCarouselLoading: false,
          carouselList: filteredMovies,
        ));
      });
    });

    on<_GetTopMovie>((event, emit) async {
      if (state.topMovieList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(isTopMovieLoading: true, isTopMovieError: false));

      final result = await _homeServices.getTopMovies();
      result.fold((MainFailure failure) {
        log('Top Movie -> failure');
        emit(
          state.copyWith(
            isTopMovieError: true,
            isTopMovieLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Top Movie -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        emit(state.copyWith(
          isTopMovieError: false,
          isTopMovieLoading: false,
          topMovieList: filteredMovies,
        ));
      });
    });

    on<_GetTopTv>((event, emit) async {
      if (state.topTvList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isTopTvLoading: true,
        isTopTvError: false,
      ));

      final result = await _homeServices.getTopTv();
      result.fold((MainFailure failure) {
        log('Top TV -> failure');
        emit(
          state.copyWith(
            isTopTvError: true,
            isTopTvLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Top TV -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        emit(state.copyWith(
          isTopTvError: false,
          isTopTvLoading: false,
          topTvList: filteredMovies,
        ));
      });
    });

    on<_GetTopRatedMovie>((event, emit) async {
      if (state.topRatedMovies.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isTopRatedMovieLoading: true,
        isTopRatedMovieError: false,
      ));
      final result = await _homeServices.getTopRatedMovies();
      result.fold((MainFailure failure) {
        log('Top Rated Movie -> failure');
        emit(
          state.copyWith(
            isTopRatedMovieError: true,
            isTopRatedMovieLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Top Rated Movie -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        emit(state.copyWith(
          isTopRatedMovieError: false,
          isTopRatedMovieLoading: false,
          topRatedMovies: filteredMovies,
        ));
      });
    });

    on<_GetTopRatedTv>((event, emit) async {
      if (state.topRatedTv.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isTopRatedTvLoading: true,
        isTopRatedTvError: false,
      ));
      final result = await _homeServices.getTopRatedTV();
      result.fold((MainFailure failure) {
        log('Top Rated Tv -> failure');
        emit(
          state.copyWith(
            isTopRatedTvError: true,
            isTopRatedTvLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Top Rated Tv -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        emit(state.copyWith(
          isTopRatedTvError: false,
          isTopRatedTvLoading: false,
          topRatedTv: filteredMovies,
        ));
      });
    });
  }
}
