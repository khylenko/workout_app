import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/local_notifications_config.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/bloc/exersize_crud_bloc.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/widgets/value_change_widget.dart';
import 'package:personal_workout_app/features/home/bloc/export_bloc.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/generated_assets/assets.gen.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bloc/timer_bloc.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/widgets/rest_timer_card_widget.dart';
import 'package:wakelock/wakelock.dart';

class BottomSheetManager {
  static Future<void> showSaveExersizeBottomSheet({
    required BuildContext context,
    required VoidCallback callback,
  }) {
    final body = <Widget>[
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            callback();
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.c7587FF,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.save_exersize_bottomsheet_save_option.tr(),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.cBC6083,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.save_exersize_bottomsheet_exit_option.tr(),
          ),
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
    );
  }

  static Future<void> showExportDataBottomSheet({
    required BuildContext context,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final body = <Widget>[
      Text(
        LocaleKeys.export_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 8,
      ),
      RichText(
        text: TextSpan(
          text: '',
          children: [
            TextSpan(
              text: '${LocaleKeys.export_bottomsheet_description_1.tr()} ',
              style: textTheme.bodyLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.export_bottomsheet_description_2.tr()} ',
              style: textTheme.titleLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.export_bottomsheet_description_3.tr()} ',
              style: textTheme.bodyLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.export_bottomsheet_description_4.tr()} ',
              style: textTheme.titleLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.export_bottomsheet_description_5.tr()} ',
              style: textTheme.bodyLarge,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: Builder(
          builder: (ctx) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
                context.read<ExportBloc>().add(const ExportEvent.export());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: ColorName.white,
                backgroundColor: ColorName.c7587FF,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                LocaleKeys.export_bottomsheet_button_ok.tr(),
              ),
            );
          },
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: Builder(
          builder: (ctx) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: ColorName.white,
                backgroundColor: ColorName.cBC6083,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                LocaleKeys.export_bottomsheet_button_cancel.tr(),
              ),
            );
          },
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
    );
  }

  static Future<void> showImportDataBottomSheet({
    required BuildContext context,
    required String path,
  }) {
    final textTheme = Theme.of(context).textTheme;

    final body = <Widget>[
      Text(
        LocaleKeys.import_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 8,
      ),
      RichText(
        text: TextSpan(
          text: '',
          children: [
            TextSpan(
              text: '${LocaleKeys.import_bottomsheet_description_1.tr()} ',
              style: textTheme.bodyLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.import_bottomsheet_description_2.tr()} ',
              style: textTheme.titleLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.import_bottomsheet_description_3.tr()} ',
              style: textTheme.bodyLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.import_bottomsheet_description_4.tr()} ',
              style: textTheme.titleLarge,
            ),
            TextSpan(
              text: '${LocaleKeys.import_bottomsheet_description_5.tr()} ',
              style: textTheme.bodyLarge,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            context.read<ImportBloc>().add(
                  ImportEvent.restore(
                    path: path,
                  ),
                );
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.c7587FF,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.import_bottomsheet_button_ok.tr(),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.cBC6083,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.import_bottomsheet_button_cancel.tr(),
          ),
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
    );
  }

  static Future<void> showFailureBottomSheet({
    required BuildContext context,
    required String err,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final body = <Widget>[
      Center(
        child: Image.asset(
          Assets.images.error.path,
          width: 50,
          height: 50,
        ),
      ),
      Text(
        LocaleKeys.error_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        err,
        style: textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.c7587FF,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.error_bottomsheet_button.tr(),
          ),
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
    );
  }

  static Future<void> showDeleteExersizeBottomSheet({
    required BuildContext context,
    required int createdAt,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final body = <Widget>[
      Text(
        LocaleKeys.delete_exersize_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        LocaleKeys.delete_exersize_bottomsheet_description.tr(),
        style: textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 24,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            context.read<ExersizeCrudBloc>().add(
                  ExersizeCrudEvent.delete(
                    createdAt: createdAt,
                  ),
                );
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.cBC6083,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.delete_exersize_bottomsheet_delete_option.tr(),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.c7587FF,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.delete_exersize_bottomsheet_exit_option.tr(),
          ),
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
    );
  }

  static Future<void> showRestTimerBottomSheet({
    required BuildContext context,
    required int duration,
    required int timePassed,
    required bool needHideButton,
  }) {
    final textTheme = Theme.of(context).textTheme;
    context.read<TimerBloc>().add(
          TimerEvent.start(
            duration: duration,
            timePassed: timePassed,
          ),
        );

    Wakelock.enable();

    final body = <Widget>[
      Text(
        LocaleKeys.rest_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      const RestTimerCard(),
      const SizedBox(
        height: 16,
      ),
      Builder(
        builder: (ctx) {
          return SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                ctx.read<TimerBloc>().add(const TimerEvent.stop());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: ColorName.white,
                backgroundColor: ColorName.cBC6083,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                LocaleKeys.rest_bottomsheet_button.tr(),
              ),
            ),
          );
        },
      ),
      if (needHideButton)
        Builder(
          builder: (ctx) {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    final timeLeft = ctx.read<TimerBloc>().state.maybeWhen(
                          orElse: () => duration,
                          ticking: (_, timeLeft) => timeLeft,
                        );
                    NotificationService().showProgressNotification(
                      duration,
                      timeLeft,
                    );
                    Navigator.pop(ctx);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: ColorName.white,
                    backgroundColor: ColorName.c7587FF,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.rest_bottomsheet_button_hide.tr(),
                  ),
                ),
              ),
            );
          },
        )
    ];

    return _bottomSheet(
      context,
      body,
      isScrollControlled: true,
    ).whenComplete(Wakelock.disable);
  }

  static Future<void> showIncreaseSetsOrRepsBottomSheet({
    required BuildContext context,
    required Exersize exersize,
  }) {
    final textTheme = Theme.of(context).textTheme;
    var temp = exersize;

    int activities() {
      return ((temp.reps + temp.minRepsIncrease) / temp.sets).ceil();
    }

    final body = <Widget>[
      Text(
        LocaleKeys.ex_increase_bottomsheet_title.tr(),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        LocaleKeys.ex_increase_bottomsheet_description.tr(),
        style: textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 16,
      ),
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                LocaleKeys.ex_increase_bottomsheet_hint.tr().replaceAll(
                      '{num}',
                      activities().toString(),
                    ),
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              ValueChangeWidget(
                title: LocaleKeys.sets.tr(),
                value: temp.sets,
                callback: (v) {
                  setState(() {
                    temp = temp.copyWith(
                      sets: v,
                    );
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ValueChangeWidget(
                title: LocaleKeys.reps.tr(),
                value: temp.reps,
                callback: (v) {
                  setState(() {
                    temp = temp.copyWith(
                      reps: v,
                    );
                  });
                },
              ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: activities() <= temp.reps
                      ? () {
                          context.read<ExersizeCrudBloc>().add(
                                ExersizeCrudEvent.save(
                                  exersize: temp,
                                ),
                              );
                          Navigator.pop(context);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: ColorName.white,
                    backgroundColor: ColorName.c7587FF,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.ex_increase_bottomsheet_button_ok.tr(),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: ColorName.white,
            backgroundColor: ColorName.cBC6083,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            LocaleKeys.ex_increase_bottomsheet_button_cancel.tr(),
          ),
        ),
      ),
    ];

    return _bottomSheet(
      context,
      body,
      isScrollControlled: true,
    );
  }
}

Future<void> _bottomSheet(
  BuildContext context,
  List<Widget> body, {
  bool isScrollControlled = false,
}) {
  return showModalBottomSheet<void>(
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: isScrollControlled,
    barrierColor: ColorName.c1D1D1B.withOpacity(0.2),
    backgroundColor: ColorName.transparent,
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.only(
        top: MediaQueryData.fromView(View.of(context)).padding.top,
      ),
      child: LayoutBuilder(
        builder: (context, _) => AnimatedPadding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          duration: const Duration(
            milliseconds: 150,
          ),
          curve: Curves.easeOut,
          child: Container(
            padding: const EdgeInsets.only(
              left: 16,
              top: 8,
              right: 16,
              bottom: 24,
            ),
            decoration: const BoxDecoration(
              color: ColorName.cF6F6F6,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  14,
                ),
                topRight: Radius.circular(
                  14,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 4,
                      decoration: BoxDecoration(
                        color: ColorName.c1D1D1B.withOpacity(
                          0.2,
                        ),
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                ...body,
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
