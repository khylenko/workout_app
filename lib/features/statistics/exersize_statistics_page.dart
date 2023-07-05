import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/statistics_crud_bloc.dart';
import 'package:personal_workout_app/features/statistics/widgets/statistics_card_widget.dart';

class ExersizeStatisticsPage extends StatelessWidget {
  const ExersizeStatisticsPage({super.key});
  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (context) {
        context.read<LoadStatisticsBloc>().add(
              const LoadStatisticsEvent.load(),
            );
        return const ExersizeStatisticsPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.statistics.tr(),
        ),
      ),
      body: BlocBuilder<StatisticsCrudBloc, StatisticsCrudState>(
        builder: (context, state) {
          // final restoredIds = state.maybeWhen(
          //   success: (restoredIds) => restoredIds,
          //   orElse: () => <int>[],
          // );
          return BlocBuilder<LoadStatisticsBloc, LoadStatisticsState>(
            builder: (context, stateData) {
              return stateData.maybeWhen(
                success: (exersize) {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 8,
                    ),
                    itemBuilder: (context, index) {
                      return StatisticsCard(
                        exersize: exersize[index],
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(
                      height: 24,
                    ),
                    itemCount: exersize.length,
                  );
                },
                orElse: SizedBox.new,
              );
            },
          );
        },
      ),
    );
  }
}
