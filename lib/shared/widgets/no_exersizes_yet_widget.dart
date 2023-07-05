import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/features/import/import_page.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';

class NoExersizesYet extends StatelessWidget {
  const NoExersizesYet({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 36,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorName.cDDE2E5,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.home_page_no_ex_title.tr(),
              style: textTheme.titleLarge!.copyWith(
                color: ColorName.c9AA7B3,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              LocaleKeys.home_page_no_ex_hint.tr(),
              style: textTheme.bodyLarge!.copyWith(
                color: ColorName.c9AA7B3,
              ),
              textAlign: TextAlign.center,
            ),
            BlocBuilder<ImportBloc, ImportState>(
              builder: (context, state) {
                final isActive = state.maybeWhen(
                  orElse: () => false,
                  success: (
                    _,
                    data,
                  ) =>
                      data != null,
                );
                return isActive
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            LocaleKeys.home_page_no_ex_import.tr(),
                            style: textTheme.bodyLarge!.copyWith(
                              color: ColorName.c9AA7B3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          IconButton.filled(
                            onPressed: () {
                              Navigator.push(
                                context,
                                ExportImportPage.route(),
                              );
                            },
                            icon: const Icon(
                              Icons.upload_file,
                            ),
                            style: IconButton.styleFrom(
                              foregroundColor: ColorName.white,
                              backgroundColor: ColorName.c7587FF,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          )
                        ],
                      )
                    : const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
