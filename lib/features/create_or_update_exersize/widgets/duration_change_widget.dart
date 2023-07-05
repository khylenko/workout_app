import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_workout_app/shared/extensions/int_extension.dart';
import 'package:personal_workout_app/shared/widgets/value_change_button.dart';

class DurationChangeWidget extends StatelessWidget {
  const DurationChangeWidget({
    required this.duration,
    required this.callback,
    required this.title,
    this.minValue = 30,
    this.valueChangeStep = 10,
    super.key,
  });
  final String title;
  final int duration;

  final int minValue;
  final int valueChangeStep;
  final void Function(int) callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final duration = Duration(
      seconds: this.duration,
    );
    final minutes = duration.inMinutes.remainder(60).timerFormat();
    final seconds = duration.inSeconds.remainder(60).timerFormat();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    '$minutes:$seconds',
                    style: textTheme.displaySmall!.copyWith(
                      fontFeatures: [
                        const FontFeature.tabularFigures(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ValueChangeButton(
                  value: this.duration,
                  callback: callback,
                  minValue: minValue,
                  valueChangeStep: valueChangeStep,
                  type: ValueChangeButtonType.negative,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ValueChangeButton(
                  value: this.duration,
                  callback: callback,
                  minValue: minValue,
                  valueChangeStep: valueChangeStep,
                  type: ValueChangeButtonType.positive,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
