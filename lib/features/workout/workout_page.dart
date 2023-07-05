import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/bloc/exersize_crud_bloc.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/features/workout/bloc/workout_bloc.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_not_started_body_widget.dart';
import 'package:personal_workout_app/features/workout/widgets/exersize_started_body_widget.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({
    required this.createdAt,
    super.key,
  });
  static MaterialPageRoute<void> route({
    required int createdAt,
  }) {
    return MaterialPageRoute(
      builder: (context) {
        context.read<WorkoutBloc>().add(
              WorkoutEvent.loadExersize(
                createdAt: createdAt,
              ),
            );
        return WorkoutPage(
          createdAt: createdAt,
        );
      },
    );
  }

  final int createdAt;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExersizeCrudBloc, ExersizeCrudState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.read<WorkoutBloc>().add(
                  WorkoutEvent.loadExersize(
                    createdAt: createdAt,
                  ),
                );
          },
          orElse: () {},
        );
      },
      child: BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (ctx, state) {
          state.maybeWhen(
            successWorkoutNotStarted: (exersize) {
              if (exersize.canIcreaseSetsOrReps) {
                BottomSheetManager.showIncreaseSetsOrRepsBottomSheet(
                  context: context,
                  exersize: exersize,
                );
              }
            },
            successWorkoutEnded: (exersize, isLastExersize) {
              context.read<LoadDataBloc>().add(const LoadDataEvent.load());
              context
                  .read<LoadStatisticsBloc>()
                  .add(const LoadStatisticsEvent.load());
              Navigator.pop(context);
              if (!isLastExersize) {
                BottomSheetManager.showRestTimerBottomSheet(
                  context: ctx,
                  duration: exersize.exersizeRelaxTime,
                  timePassed: 0,
                  needHideButton: true,
                );
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            successWorkoutNotStarted: (exersize) {
              return WorkoutNotStartedBody(
                exersize: exersize,
              );
            },
            successWorkoutStarted: (exersize) {
              return ExersizeStartedBody(
                exersize: exersize,
              );
            },
            orElse: () => const Scaffold(),
          );
        },
      ),
    );
  }
}
