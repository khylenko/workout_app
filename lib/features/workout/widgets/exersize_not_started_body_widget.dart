import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/create_or_update_exersize_page.dart';
import 'package:personal_workout_app/features/workout/bloc/workout_bloc.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_activity_display_widget.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class WorkoutNotStartedBody extends StatelessWidget {
  const WorkoutNotStartedBody({
    required this.exersize,
    super.key,
  });

  final Exersize exersize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          exersize.title,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CreateOrUpdateExersize.route(
                  createdAt: exersize.createdAt,
                ),
              ).then(
                (value) => context.read<WorkoutBloc>().add(
                      WorkoutEvent.loadExersize(
                        createdAt: exersize.createdAt,
                      ),
                    ),
              );
            },
            icon: const Icon(
              Icons.edit,
              color: ColorName.c7587FF,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.read<WorkoutBloc>().add(
                        WorkoutEvent.updateWorkoutStartDate(
                          createdAt: exersize.createdAt,
                        ),
                      );
                },
                child: Center(
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: ColorName.c7587FF,
                    child: Text(
                      LocaleKeys.workout_page_start.tr(),
                      style: textTheme.displayMedium!.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionDisplay extends StatelessWidget {
  const DescriptionDisplay({
    required this.description,
    super.key,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: ColorName.cDDE2E5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.description.tr(),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorName.white,
            ),
            child: Text(
              description,
              style: textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
