import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_navigator_event.dart';
part 'main_navigator_state.dart';
part 'main_navigator_bloc.freezed.dart';

@injectable
class MainNavigatorBloc extends Bloc<MainNavigatorEvent, MainNavigatorState> {
  MainNavigatorBloc() : super(MainNavigatorState.initial()) {
    on<_ChangeItem>((event, emit) {
      emit(state.copyWith(currentSelected: event.item));
    });
  }
}
