import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/shared/bloc/timer_bloc.dart';
import 'package:personal_workout_app/shared/widgets/timer_display_widget.dart';

class RestTimerCard extends StatelessWidget {
  const RestTimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimerBloc, TimerState>(
      listener: (context, state) {
        state.maybeWhen(
          completed: () {
            Navigator.pop(context);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          ticking: (duration, timeLeft) {
            final duration = state.maybeWhen(
              ticking: (duration, _) => duration,
              orElse: () => 0,
            );
            final timeLeft = state.maybeWhen(
              ticking: (_, timeLeft) => timeLeft,
              orElse: () => 0,
            );
            return Column(
              children: [
                TimerDisplay(
                  duration: duration,
                  timeLeft: timeLeft,
                ),
              ],
            );
          },
          orElse: SizedBox.new,
        );
      },
    );
  }
}
