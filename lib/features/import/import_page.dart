import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/extensions/string_extensions.dart';

class ExportImportPage extends StatelessWidget {
  const ExportImportPage({super.key});
  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (context) {
        context.read<ImportBloc>().add(const ImportEvent.load());
        return const ExportImportPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImportBloc, ImportState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (
            _,
            __,
          ) {
            context.read<LoadDataBloc>().add(const LoadDataEvent.load());
            context
                .read<LoadStatisticsBloc>()
                .add(const LoadStatisticsEvent.load());
          },
          failure: (message) {
            BottomSheetManager.showFailureBottomSheet(
              context: context,
              err: message,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          success: (createdAt, data) {
            return Scaffold(
              appBar: AppBar(
                title: Text(LocaleKeys.import_page_title.tr()),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      // ignore: lines_longer_than_80_chars
                      '${LocaleKeys.import_page_tab_current_data_created.tr()} ${createdAt?.toString().getDateFromFileSystemEntityPath()}',
                    ),
                  ),
                  if (data?.isNotEmpty ?? false)
                    ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(
                        16,
                      ),
                      itemCount: data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap: () =>
                              BottomSheetManager.showImportDataBottomSheet(
                            context: context,
                            path: data[index].path,
                          ),
                          tileColor: ColorName.white,
                          title: Text(
                            data[index].path.getDateFromFileSystemEntityPath(),
                          ),
                          trailing: Icon(
                            Icons.upload_file,
                            color: data[index].path.getFileNameFromFilePath() ==
                                    createdAt.toString()
                                ? ColorName.cC33C54
                                : null,
                          ),
                        );
                      },
                    ),
                ],
              ),
            );
          },
          orElse: SizedBox.new,
        );
      },
    );
  }
}
