import 'package:flutter/material.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';

class ActivityDisplay extends StatelessWidget {
  const ActivityDisplay({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final int value;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorName.white,
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: textTheme.displaySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
