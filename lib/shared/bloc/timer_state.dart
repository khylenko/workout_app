part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.initial() = _Initial;
  const factory TimerState.started() = _Started;
  const factory TimerState.ticking({
    required int duration,
    required int timeLeft,
  }) = _Ticking;
  const factory TimerState.completed() = _Completed;
}
