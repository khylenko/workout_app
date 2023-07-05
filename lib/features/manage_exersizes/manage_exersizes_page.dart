import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/bloc/exersize_crud_bloc.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/create_or_update_exersize_page.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class ManageExersizesPage extends StatelessWidget {
  const ManageExersizesPage({super.key});
  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (context) {
        context.read<LoadDataBloc>().add(const LoadDataEvent.load());
        return const ManageExersizesPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ExersizeCrudBloc, ExersizeCrudState>(
          listener: (context, state) {
            state.maybeWhen(
              success: () {
                context.read<LoadDataBloc>().add(
                      const LoadDataEvent.load(),
                    );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<LoadDataBloc, LoadDataState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (exersize) {
                if (exersize.isEmpty) {
                  Navigator.pop(context);
                }
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.exersizes.tr(),
          ),
        ),
        body: BlocBuilder<LoadDataBloc, LoadDataState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (List<Exersize> exersize) {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  itemCount: exersize.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      key: Key(exersize[index].createdAt.toString()),
                      height: 70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  14,
                                ),
                                color: ColorName.white,
                              ),
                              child: Center(
                                child: Text(
                                  exersize[index].title,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            width: 70,
                            child: IconButton.filled(
                              onPressed: () {
                                BottomSheetManager
                                    .showDeleteExersizeBottomSheet(
                                  context: context,
                                  createdAt: exersize[index].createdAt,
                                );
                              },
                              icon: const Icon(Icons.delete),
                              style: IconButton.styleFrom(
                                foregroundColor: ColorName.white,
                                backgroundColor: ColorName.cDB4B19,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            width: 70,
                            child: IconButton.filled(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CreateOrUpdateExersize.route(
                                    createdAt: exersize[index].createdAt,
                                  ),
                                );
                              },
                              icon: const Icon(Icons.edit),
                              style: IconButton.styleFrom(
                                foregroundColor: ColorName.white,
                                backgroundColor: ColorName.c7587FF,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 16,
                  ),
                );
              },
              orElse: SizedBox.new,
            );
          },
        ),
      ),
    );
  }
}
