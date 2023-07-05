import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_workout_app/shared/widgets/value_change_button.dart';

class ValueChangeWidget extends StatelessWidget {
  const ValueChangeWidget({
    required this.value,
    required this.callback,
    required this.title,
    super.key,
  });
  final String title;
  final int value;
  final void Function(int) callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
                    value.toString(),
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
                  value: value,
                  callback: callback,
                  type: ValueChangeButtonType.negative,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ValueChangeButton(
                  value: value,
                  callback: callback,
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
