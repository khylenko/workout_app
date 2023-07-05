import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/features/workout/bloc/workout_bloc.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_activity_card_widget.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_activity_display_widget.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_not_started_body_widget.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class ExersizeStartedBody extends StatelessWidget {
  const ExersizeStartedBody({
    required this.exersize,
    super.key,
  });
  final Exersize exersize;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<LoadDataBloc>().add(const LoadDataEvent.load());
        context
            .read<LoadStatisticsBloc>()
            .add(const LoadStatisticsEvent.load());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            exersize.title,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ActivityDisplay(
                      title: LocaleKeys.sets.tr(),
                      value: exersize.sets,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: ActivityDisplay(
                      title: LocaleKeys.reps.tr(),
                      value: exersize.reps,
                    ),
                  ),
                ],
              ),
              if (exersize.description.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: DescriptionDisplay(
                    description: exersize.description,
                  ),
                ),
              const SizedBox(
                height: 12,
              ),
              ExersizeActivityCard(
                exersize: exersize,
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          if (!exersize.isLastSet)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    context.read<WorkoutBloc>().add(
                          WorkoutEvent.updateWorkoutEndDate(
                            createdAt: exersize.createdAt,
                          ),
                        );
                  },
                  child: Text(
                    LocaleKeys.workout_page_end_exersize.tr(),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
