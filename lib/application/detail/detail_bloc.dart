import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_detail/get_detail.dart';
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
  }
}
