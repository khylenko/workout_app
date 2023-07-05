import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    required this.exersize,
    super.key,
  });

  final Exersize exersize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final min = exersize.minReps;
    final max = exersize.averageOfAllReps * 2;
    final progressLog = exersize.progressLog;
    return Container(
      padding: const EdgeInsets.all(
        8,
      ),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  exersize.title,
                  style: textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: Text(
                  DateFormat('dd/MM/yyyy').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      exersize.createdAt,
                    ),
                  ),
                  style: textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              return SizedBox(
                width: width,
                height: 240,
                child: SfCartesianChart(
                  margin: EdgeInsets.zero,
                  legend: const Legend(
                    isVisible: false,
                  ),
                  primaryXAxis: CategoryAxis(
                    rangePadding: ChartRangePadding.none,
                    labelPlacement: LabelPlacement.onTicks,
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    majorGridLines: const MajorGridLines(
                      width: 1,
                      dashArray: <double>[2, 2],
                    ),
                  ),
                  primaryYAxis: NumericAxis(
                    borderWidth: 1,
                    minimum: min.toDouble(),
                    maximum: max.toDouble(),
                    interval: max.toDouble() < 10 ? 1 : 5,
                    borderColor: ColorName.transparent,
                    majorTickLines: const MajorTickLines(
                      size: 1,
                    ),
                    plotBands: <PlotBand>[
                      PlotBand(
                        start: exersize.averageOfAllReps - 1,
                        end: exersize.averageOfAllReps + 1,
                        color: ColorName.c45CF79,
                        opacity: 0.2,
                      ),
                    ],
                  ),
                  series: [
                    StackedLineSeries<ProgressLog, String>(
                      color: ColorName.black,
                      dataSource: progressLog,
                      markerSettings: const MarkerSettings(
                        isVisible: true,
                        width: 9.5,
                        height: 9.5,
                        borderWidth: 2,
                        color: ColorName.white,
                      ),
                      xValueMapper: (ProgressLog data, _) =>
                          DateFormat('dd').format(
                        DateTime.fromMillisecondsSinceEpoch(
                          data.workoutStartDate,
                        ),
                      ),
                      yValueMapper: (ProgressLog data, _) => data.sumOfAllReps,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

@UseCase(
  name: 'Statistics Card',
  type: StatisticsCard,
)
Widget statisticsCardUseCase(BuildContext context) {
  return Center(
    child: StatisticsCard(
      exersize: Exersize.initial(),
    ),
  );
}
