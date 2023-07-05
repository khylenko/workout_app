import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/extensions/int_extension.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TimerDisplay extends StatelessWidget {
  const TimerDisplay({
    required this.duration,
    required this.timeLeft,
    super.key,
  });
  final int duration;
  final int timeLeft;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final indicator = (timeLeft / duration) * 100;

    final minutes = timeLeft.timerFormatMinutes();
    final seconds = timeLeft.timerFormatSeconds();
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          radiusFactor: 0.8,
          axisLineStyle: const AxisLineStyle(
            thicknessUnit: GaugeSizeUnit.factor,
            thickness: 0.15,
            color: ColorName.cF1F1F1,
          ),
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              positionFactor: 0.1,
              angle: 90,
              widget: Text(
                '$minutes:$seconds',
                style: textTheme.displayMedium!.copyWith(
                  fontFeatures: [
                    const FontFeature.tabularFigures(),
                  ],
                ),
              ),
            ),
          ],
          pointers: <GaugePointer>[
            RangePointer(
              value: indicator,
              cornerStyle: CornerStyle.bothCurve,
              enableAnimation: true,
              animationDuration: 1200,
              sizeUnit: GaugeSizeUnit.factor,
              gradient: const SweepGradient(
                colors: <Color>[
                  Color(0xFF6A6EF6),
                  Color(0xFFDB82F5),
                ],
                stops: <double>[0.25, 0.75],
              ),
              color: const Color(0xFF00A8B5),
              width: 0.15,
            ),
          ],
        ),
      ],
    );
  }
}
