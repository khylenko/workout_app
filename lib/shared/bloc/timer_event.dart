part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.start({
    required int duration,
    required int timePassed,
  }) = _Start;
  const factory TimerEvent.reset() = _Reset;
  const factory TimerEvent.stop() = _Stop;
  const factory TimerEvent.ticked({
    required int duration,
    required int timeLeft,
  }) = _Ticked;
}
