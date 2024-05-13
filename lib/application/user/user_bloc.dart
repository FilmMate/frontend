import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initail()) {
    on<_ChangeColor>((event, emit) {
      emit(state.copyWith(changeButtonColor: event.trigger));
    });

    on<_ChangeScreen>((event, emit) {
      emit(state.copyWith(changeScreen: !state.changeScreen));
    });

  }
}
