part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({required int carouselIndex}) = _HomeState;
  factory HomeState.initial() => const HomeState(carouselIndex: 0);
}
