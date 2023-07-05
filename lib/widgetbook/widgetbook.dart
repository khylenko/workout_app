import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:personal_workout_app/config/translations/gen/codegen_loader.g.dart';
import 'package:personal_workout_app/widgetbook/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@App()
class WorkouterWidgetbook extends StatelessWidget {
  const WorkouterWidgetbook({required this.theme, super.key});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final theme = WidgetbookTheme(
      name: 'Light',
      data: this.theme,
    );
    return EasyLocalization(
      path: 'lib/config/translations',
      fallbackLocale: const Locale('ru'),
      useOnlyLangCode: true,
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
      ],
      assetLoader: const CodegenLoader(),
      child: Builder(
        builder: (context) {
          return Widgetbook.material(
            directories: directories,
            addons: [
              MaterialThemeAddon(
                themes: [theme],
                initialTheme: theme,
              ),
              DeviceFrameAddon(
                devices: [
                  Devices.ios.iPhone13ProMax,
                  Devices.ios.iPhone13,
                  Devices.ios.iPhone13Mini,
                  Devices.ios.iPhoneSE,
                  Devices.android.bigPhone,
                  Devices.android.mediumPhone,
                  Devices.android.smallPhone,
                ],
                initialDevice: Devices.ios.iPhone13,
              ),
              LocalizationAddon(
                locales: context.supportedLocales,
                localizationsDelegates: [
                  ...context.localizationDelegates,
                ],
                initialLocale: const Locale('en'),
              ),
            ],
          );
        },
      ),
    );
  }
}
