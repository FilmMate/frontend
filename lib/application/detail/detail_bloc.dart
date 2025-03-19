import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_detail/get_detail.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/models/watch_provider/watch_provider.dart';
import 'package:film_mate/domain/services/detail_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final DetailServices _detailServices;
  DetailBloc(this._detailServices) : super(DetailState.initial()) {
    on<_TriggerTrailer>((event, emit) {
      log(event.trigger.toString());
      emit(state.copyWith(pressedTrailer: event.trigger));
    });

    on<_GetDetails>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, detailData: GetDetail(cast: [], crew: [])));
      late final Either<MainFailure, GetDetail> result;
      if (event.type == "movie") {
        result = await _detailServices.getMovieDetail(id: event.id);
      } else {
        result = await _detailServices.getTVDetail(id: event.id);
      }
      result.fold((MainFailure failure) {
        log('Detail -> failure');
        emit(
          state.copyWith(isError: true, isLoading: false),
        );
      }, (GetDetail success) {
        log("Detail -> success");
        // Filter the success.result list
        emit(state.copyWith(
          isError: false,
          isLoading: false,
          detailData: success,
        ));
      });
    });

    on<_GetSimilar>((event, emit) async {
      emit(state.copyWith(isLoadingSimilar: true));
      late final Either<MainFailure, TMDB> result;
      result = await _detailServices.getSimilar(id: event.id, type: event.type);
      result.fold((MainFailure failure) {
        log('Detail -> failure');
        emit(
          state.copyWith(isErrorSimilar: true, isLoadingSimilar: false),
        );
      }, (TMDB success) {
        log("Similar -> success");
        final filteredList = success.results
            .where((media) => media.backdropPath != null)
            .toList();
        emit(state.copyWith(
          isErrorSimilar: false,
          isLoadingSimilar: false,
          similarList: filteredList,
        ));
      });
    });

    on<_GetTvProvider>((event, emit) async {
      emit(state.copyWith(isLoadingTvProvider: true));
      late final Either<MainFailure, WatchProvider> result;
      result = await _detailServices.getProvider(id: event.tid, type: event.type);
      result.fold((MainFailure failure) {
        log('Detail -> failure');
        emit(
          state.copyWith(isErrorTvProvider: true, isLoadingTvProvider: false),
        );
      }, (WatchProvider success) {
        log("Provider -> success");
        emit(state.copyWith(
            isErrorSimilar: false,
            isLoadingSimilar: false,
            tvProviderList:
                success.results?.india ?? In(flatrate: [], link: null)));
      });
    });
  }
}
