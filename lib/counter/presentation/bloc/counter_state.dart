part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  factory CounterState.initial() => const CounterState(count: 0);
  const factory CounterState({required int count}) = _CounterState;
}
