import 'package:flutter/material.dart';
import 'package:personal_workout_app/features/workout/workout_page.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class ExersizeTile extends StatelessWidget {
  const ExersizeTile({
    required this.exersize,
    required this.index,
    super.key,
  });
  final Exersize exersize;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ReorderableDragStartListener(
      index: index,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: ListTile(
          tileColor: ColorName.c7587FF.withOpacity(0.1),
          title: Text(
            exersize.title,
          ),
          subtitle: exersize.description.isNotEmpty
              ? Text(
                  exersize.description,
                )
              : null,
          trailing: exersize.isCompletedToday
              ? const Icon(
                  Icons.check_circle_rounded,
                  color: ColorName.c45CF79,
                )
              : const Icon(
                  Icons.chevron_right_rounded,
                  color: ColorName.c696968,
                ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onTap: () {
            Navigator.push(
              context,
              WorkoutPage.route(
                createdAt: exersize.createdAt,
              ),
            );
          },
        ),
      ),
    );
  }
}
