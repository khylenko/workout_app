import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:json_theme/json_theme.dart';
import 'package:personal_workout_app/config/local_notifications_config.dart';
import 'package:personal_workout_app/shared/repo/init_repos.dart';
import 'package:personal_workout_app/widgetbook/widgetbook.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await NotificationService().init();
  await InitRepos.init();

  final themeStr = await rootBundle.loadString(
    'assets/theme/appainter_theme.json',
  );
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(
    WorkouterWidgetbook(
      theme: theme,
    ),
  );
}
