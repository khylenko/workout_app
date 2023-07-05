import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/features/import/import_page.dart';
import 'package:personal_workout_app/features/manage_exersizes/manage_exersizes_page.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/features/statistics/exersize_statistics_page.dart';
import 'package:personal_workout_app/generated_assets/assets.gen.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    required this.scaffoldKey,
    super.key,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: kToolbarHeight,
              left: 12,
              right: 12,
              bottom: 12,
            ),
            color: ColorName.cB191DC,
            child: Column(
              children: [
                Image.asset(
                  Assets.images.logo.path,
                  color: ColorName.white,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  LocaleKeys.app_name.tr(),
                  style: textTheme.headlineSmall!.copyWith(
                    color: ColorName.white,
                  ),
                ),
                FutureBuilder(
                  future: PackageInfo.fromPlatform(),
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<PackageInfo> snapshot,
                  ) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        !snapshot.hasError &&
                        snapshot.hasData) {
                      return Text(
                        snapshot.data!.version,
                        style: textTheme.bodySmall!.copyWith(
                          color: ColorName.white,
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ],
            ),
          ),
          BlocBuilder<LoadDataBloc, LoadDataState>(
            builder: (context, state) {
              final isActive = state.maybeWhen(
                orElse: () => false,
                success: (exersize) => exersize.isNotEmpty,
              );
              return ListTile(
                enabled: isActive,
                leading: const Icon(Icons.sports_gymnastics),
                title: Text(
                  LocaleKeys.exersizes.tr(),
                ),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Navigator.push(
                    context,
                    ManageExersizesPage.route(),
                  );
                },
              );
            },
          ),
          BlocBuilder<LoadStatisticsBloc, LoadStatisticsState>(
            builder: (context, state) {
              final isActive = state.maybeWhen(
                orElse: () => false,
                success: (statistics) =>
                    statistics.isNotEmpty &&
                    statistics
                        .map((e) => e.progressLog)
                        .expand((e) => e)
                        .isNotEmpty,
              );
              return ListTile(
                enabled: isActive,
                leading: const Icon(Icons.insert_chart_outlined),
                title: Text(
                  LocaleKeys.statistics.tr(),
                ),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Navigator.push(
                    context,
                    ExersizeStatisticsPage.route(),
                  );
                },
              );
            },
          ),
          BlocBuilder<ImportBloc, ImportState>(
            builder: (context, state) {
              final isActive = state.maybeWhen(
                orElse: () => false,
                success: (_, data) => data != null,
              );
              return ListTile(
                enabled: isActive,
                leading: const Icon(Icons.upload_file),
                title: Text(
                  LocaleKeys.import_page_title.tr(),
                ),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Navigator.push(
                    context,
                    ExportImportPage.route(),
                  );
                },
              );
            },
          ),
          const Spacer(),
          ListTile(
            enabled: false,
            leading: const Icon(Icons.settings_outlined),
            title: Text(
              LocaleKeys.app_settings.tr(),
            ),
            onTap: () {
              scaffoldKey.currentState?.closeDrawer();
            },
          ),
        ],
      ),
    );
  }
}
