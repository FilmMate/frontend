import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/services/genre_services.dart';
import 'package:film_mate/domain/services/home_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices _homeServices;
  final GenreServices _genreServices;
  HomeBloc(this._homeServices, this._genreServices)
      : super(HomeState.initial()) {
    on<_ChangeIndicator>((event, emit) {
      if (state.carouselIndex == event.index) {
        return;
      }
      emit(state.copyWith(
        carouselIndex: event.index,
      ));
    });

    on<_ResetAll>(
      (event, emit) {
        emit(state.copyWith(
          carouselIndex: 0,
          isCarouselLoading: false,
          isCarouselError: false,
          carouselList: [],
          genreResult1: [],
          isGenreLoading1: false,
          isGenreError1: false,
          genreResult2: [],
          isGenreLoading2: false,
          isGenreError2: false,
          genreResult3: [],
          isGenreLoading3: false,
          isGenreError3: false,
          genreResult4: [],
          isGenreLoading4: false,
          isGenreError4: false,
          genreNames: ['', '', '', ''],
          genreIds: [],
          isGenreLoadingTv1: false,
          isGenreErrorTv1: false,
          genreResultTv1: [],
          isGenreLoadingTv2: false,
          isGenreErrorTv2: false,
          genreResultTv2: [],
          isGenreLoadingTv3: false,
          isGenreErrorTv3: false,
          genreResultTv3: [],
        ));
      },
    );

    on<_GetGenreNames>((event, emit) async {
      if (state.genreIds.isEmpty) {
        final result = await _genreServices.fetchUserGenres();
        result.fold(
          (MainFailure failure) {
            log("Fetching genre names -> Failed");
          },
          (List<Map<String, dynamic>> genre) {
            emit(state.copyWith(
              genreIds: genre.map<int>((item) => item['gid']).toList(),
              genreNames:
                  genre.map<String>((item) => item['name'].toString()).toList(),
            ));
          },
        );
      }
    });

    on<_GetCarouselPosters>((event, emit) async {
      if (state.carouselList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isCarouselLoading: true,
        isCarouselError: false,
      ));

      final result = await _homeServices.getCarouselList();
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

    on<_GetFilmMateMovieList>((event, emit) async {
      if (state.filmMateMovieList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isFilmMateMovieLoading: true,
        isFilmMateMovieError: false,
      ));

      final result = await _homeServices.getFilmMateList();
      result.fold((MainFailure failure) {
        log('Filmmate movies Poster -> failure');
        emit(
          state.copyWith(
            isFilmMateMovieError: true,
            isFilmMateMovieLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Filmmate movies Poster -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        filteredMovies.shuffle();
        emit(state.copyWith(
          isFilmMateMovieError: false,
          isFilmMateMovieLoading: false,
          filmMateMovieList: filteredMovies,
        ));
      });
    });

    on<_GetFilmMateTvList>((event, emit) async {
      if (state.filmMateTvList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(
        isFilmMateTvLoading: true,
        isFilmMateTvError: false,
      ));

      final result = await _homeServices.getFilmMateTvList();
      result.fold((MainFailure failure) {
        log('Filmmate movies Poster -> failure');
        emit(
          state.copyWith(
            isFilmMateTvError: true,
            isFilmMateTvLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Filmmate movies Poster -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        filteredMovies.shuffle();
        emit(state.copyWith(
          isFilmMateTvError: false,
          isFilmMateTvLoading: false,
          filmMateTvList: filteredMovies,
        ));
      });
    });

    on<_GetMovieByLanguage>((event,emit) async{
      emit(state.copyWith(langResultLoading: true, langResultError: false));

      final result = await _homeServices.getMovieByLanguage(language: event.language,gid: event.gid);
      result.fold((MainFailure failure) {
        log('Top Movie -> failure');
        emit(
          state.copyWith(
            langResultError: true,
            langResultLoading: false,
          ),
        );
      }, (TMDB success) {
        log("Top Movie -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        emit(state.copyWith(
          langResultError: false,
          langResultLoading: false,
          langResultList: filteredMovies,
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

    on<_GetGenreResult1>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoading1: true,
        isGenreError1: false,
      ));

      if (state.genreIds.isEmpty) {
        final result = await _genreServices.fetchUserGenres();
        result.fold(
          (MainFailure failure) {
            log("Fetching genre names -> Failed");
          },
          (List<Map<String, dynamic>> genre) {
            emit(state.copyWith(
              genreIds: genre.map<int>((item) => item['gid']).toList(),
            ));
          },
        );
      }
      final result = await _homeServices.getGenre(gid: state.genreIds[0]);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreError1: true,
            isGenreLoading1: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreError1: false,
          isGenreLoading1: false,
          genreResult1: filteredMovies,
        ));
      });
    }));

    on<_GetGenreResult2>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoading2: true,
        isGenreError2: false,
      ));
      if (state.genreIds.isEmpty) {
        final result = await _genreServices.fetchUserGenres();
        result.fold(
          (MainFailure failure) {
            log("Fetching genre names -> Failed");
          },
          (List<Map<String, dynamic>> genre) {
            emit(state.copyWith(
              genreIds: genre.map<int>((item) => item['gid']).toList(),
            ));
          },
        );
      }
      final result = await _homeServices.getGenre(gid: state.genreIds[1]);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreError2: true,
            isGenreLoading2: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreError2: false,
          isGenreLoading2: false,
          genreResult2: filteredMovies,
        ));
      });
    }));

    on<_GetGenreResult3>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoading3: true,
        isGenreError3: false,
      ));
      if (state.genreIds.isEmpty) {
        final result = await _genreServices.fetchUserGenres();
        result.fold(
          (MainFailure failure) {
            log("Fetching genre names -> Failed");
          },
          (List<Map<String, dynamic>> genre) {
            emit(state.copyWith(
              genreIds: genre.map<int>((item) => item['gid']).toList(),
            ));
          },
        );
      }
      final result = await _homeServices.getGenre(gid: state.genreIds[2]);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreError3: true,
            isGenreLoading3: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreError3: false,
          isGenreLoading3: false,
          genreResult3: filteredMovies,
        ));
      });
    }));

    on<_GetGenreResult4>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoading4: true,
        isGenreError4: false,
      ));
      if (state.genreIds.isEmpty) {
        final result = await _genreServices.fetchUserGenres();
        result.fold(
          (MainFailure failure) {
            log("Fetching genre names -> Failed");
          },
          (List<Map<String, dynamic>> genre) {
            emit(state.copyWith(
              genreIds: genre.map<int>((item) => item['gid']).toList(),
            ));
          },
        );
      }
      final result = await _homeServices.getGenre(gid: state.genreIds[3]);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreError4: true,
            isGenreLoading4: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreError4: false,
          isGenreLoading4: false,
          genreResult4: filteredMovies,
        ));
      });
    }));

    on<_GetGenreResultTv1>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoadingTv1: true,
        isGenreErrorTv1: false,
      ));
      // Scifi and fantasy
      final result = await _homeServices.getGenreTv(gid: 10765);
      result.fold((MainFailure failure) {
        log('Genre Detail TV -> failure');
        emit(
          state.copyWith(
            isGenreErrorTv1: true,
            isGenreLoadingTv1: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail TV -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreErrorTv1: false,
          isGenreLoadingTv1: false,
          genreResultTv1: success.results,
        ));
      });
    }));

    on<_GetGenreResultTv2>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoadingTv2: true,
        isGenreErrorTv2: false,
      ));
      //action and adventure
      final result = await _homeServices.getGenreTv(gid: 10759);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreErrorTv2: true,
            isGenreLoadingTv2: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreErrorTv2: false,
          isGenreLoadingTv2: false,
          genreResultTv2: filteredMovies,
        ));
      });
    }));

    on<_GetGenreResultTv3>(((event, emit) async {
      emit(state.copyWith(
        isGenreLoadingTv3: true,
        isGenreErrorTv3: false,
      ));
      //action and adventure
      final result = await _homeServices.getGenreTv(gid: 9648);
      result.fold((MainFailure failure) {
        log('Genre Detail -> failure');
        emit(
          state.copyWith(
            isGenreErrorTv3: true,
            isGenreLoadingTv3: false,
          ),
        );
      }, (TMDB success) {
        log("Genre Detail -> success");
        // Filter the success.result list
        final filteredMovies =
            success.results.where((media) => media.posterPath != null).toList();
        log(filteredMovies[0].posterPath.toString());
        emit(state.copyWith(
          isGenreErrorTv3: false,
          isGenreLoadingTv3: false,
          genreResultTv3: filteredMovies,
        ));
      });
    }));
  }
}
