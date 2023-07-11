import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/workout/bloc/workout_bloc.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/widgets/value_change_button.dart';

class ExersizeActivityCard extends StatefulWidget {
  const ExersizeActivityCard({
    required this.exersize,
    super.key,
  });
  final Exersize exersize;

  @override
  State<ExersizeActivityCard> createState() => _ExersizeActivityCardState();
}

class _ExersizeActivityCardState extends State<ExersizeActivityCard> {
  late int tempReps;

  @override
  void initState() {
    super.initState();
    tempReps = widget.exersize.reps;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 380,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            14,
          ),
          topRight: Radius.circular(
            14,
          ),
          bottomLeft: Radius.circular(
            72,
          ),
          bottomRight: Radius.circular(
            72,
          ),
        ),
        border: Border.all(
          color: ColorName.cDDE2E5,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                        72,
                      ),
                      bottomRight: Radius.circular(
                        72,
                      ),
                    ),
                    child: SizedBox(
                      height: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          if (!widget.exersize.isLastSet) {
                            BottomSheetManager.showRestTimerBottomSheet(
                              context: context,
                              duration: widget.exersize.setsRelaxTime,
                              timePassed: 0,
                              needHideButton: false,
                            );
                          }

                          setState(() {
                            tempReps = widget.exersize.reps;
                          });
                          context.read<WorkoutBloc>().add(
                                WorkoutEvent.updateSet(
                                  createdAt: widget.exersize.createdAt,
                                  setNum: widget.exersize.currentSet!.setNum,
                                  completedReps: tempReps,
                                ),
                              );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: ColorName.white,
                          backgroundColor: ColorName.c7587FF,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: Text(
                                LocaleKeys.workout_page_card_end_set.tr(),
                                style: textTheme.headlineSmall!.copyWith(
                                  color: ColorName.cF2F4FF,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorName.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.workout_page_card_reps_done.tr(),
                    ),
                    SizedBox(
                      width: 120,
                      child: Center(
                        child: Text(
                          // ignore: lines_longer_than_80_chars
                          '${LocaleKeys.workout_page_card_current_set.tr()} ${widget.exersize.currentSet!.setNum}',
                          style: textTheme.bodyMedium!.copyWith(
                            fontFeatures: [
                              const FontFeature.tabularFigures(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          tempReps.toString(),
                          style: textTheme.displayLarge,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: ValueChangeButton(
                            iconSize: 72,
                            type: ValueChangeButtonType.positive,
                            decorationType:
                                ValueChangeButtonDecorationType.roundedTop,
                            value: tempReps,
                            callback: (v) {
                              setState(() {
                                tempReps = v;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: ValueChangeButton(
                            iconSize: 72,
                            type: ValueChangeButtonType.negative,
                            decorationType:
                                ValueChangeButtonDecorationType.roundedBottom,
                            value: tempReps,
                            minValue: 0,
                            callback: (v) {
                              setState(() {
                                tempReps = v;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
