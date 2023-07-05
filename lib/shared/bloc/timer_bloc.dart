import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_workout_app/config/local_notifications_config.dart';

part 'timer_bloc.freezed.dart';
part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc()
      : _ticker = const Ticker(),
        super(const TimerState.initial()) {
    on<TimerEvent>(_onEvent);
  }
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _cancelSubs();
    return super.close();
  }

  Future<void> _onEvent(
    TimerEvent event,
    Emitter<TimerState> emit,
  ) async {
    event.map(
      start: (e) => _onStarted(e, emit),
      reset: (e) => _onReset(e, emit),
      stop: (e) => _onStop(e, emit),
      ticked: (e) => _onTicked(e, emit),
    );
  }

  void _onStarted(_Start event, Emitter<TimerState> emit) {
    emit(const TimerState.started());
    _cancelSubs();
    _tickerSubscription = _ticker
        .tick(
      ticks: event.duration,
    )
        .listen(
      (duration) {
        add(
          TimerEvent.ticked(
            duration: event.duration,
            timeLeft: duration - event.timePassed,
          ),
        );
      },
    );
  }

  void _onReset(_Reset event, Emitter<TimerState> emit) {
    _cancelSubs();
    emit(const TimerState.initial());
  }

  void _onStop(_Stop event, Emitter<TimerState> emit) {
    _cancelSubs();
    emit(const TimerState.completed());
  }

  void _onTicked(_Ticked event, Emitter<TimerState> emit) {
    emit(
      TimerState.ticking(
        duration: event.duration,
        timeLeft: event.timeLeft,
      ),
    );
    if (event.timeLeft <= 0) {
      _cancelSubs();
      NotificationService().showRestEndNotification();
      emit(const TimerState.completed());
    }
  }

  void _cancelSubs() {
    _tickerSubscription?.cancel();
    _tickerSubscription = null;
  }
}

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
