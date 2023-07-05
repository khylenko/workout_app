import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_theme/json_theme.dart';
import 'package:personal_workout_app/config/bloc/bloc_observer.dart';
import 'package:personal_workout_app/config/local_notifications_config.dart';
import 'package:personal_workout_app/config/translations/gen/codegen_loader.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/bloc/exersize_crud_bloc.dart';
import 'package:personal_workout_app/features/home/bloc/export_bloc.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/home/home_page.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/statistics_crud_bloc.dart';
import 'package:personal_workout_app/features/workout/bloc/workout_bloc.dart';
import 'package:personal_workout_app/shared/bloc/timer_bloc.dart';
import 'package:personal_workout_app/shared/repo/data_repo.dart';
import 'package:personal_workout_app/shared/repo/export_import_repo.dart';
import 'package:personal_workout_app/shared/repo/init_repos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await NotificationService().init();
  await InitRepos.init();
  Bloc.observer = AppBlocObserver();

  final themeStr = await rootBundle.loadString(
    'assets/theme/appainter_theme.json',
  );
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(
    EasyLocalization(
      path: 'lib/config/translations',
      fallbackLocale: const Locale('ru'),
      useOnlyLangCode: true,
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
      ],
      assetLoader: const CodegenLoader(),
      child: MyApp(
        theme: theme,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({required this.theme, super.key});
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DataRepo(),
        ),
        RepositoryProvider(
          create: (context) => ExportImportRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoadDataBloc(
              dataRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => LoadStatisticsBloc(
              dataRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => ExersizeCrudBloc(
              dataRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => StatisticsCrudBloc(
              dataRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => WorkoutBloc(
              dataRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => TimerBloc(),
          ),
          BlocProvider(
            create: (context) => ImportBloc(
              dataRepo: context.read(),
              exportImportRepo: context.read(),
            ),
          ),
          BlocProvider(
            create: (context) => ExportBloc(
              dataRepo: context.read(),
              exportImportRepo: context.read(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'WORKOUTER',
          localizationsDelegates: [
            ...context.localizationDelegates,
          ],
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: theme,
          home: const HomePage(),
        ),
      ),
    );
  }
}
