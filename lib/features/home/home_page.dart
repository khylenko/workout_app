import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/local_notifications_config.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/create_or_update_exersize_page.dart';
import 'package:personal_workout_app/features/home/bloc/export_bloc.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/home/widgets/custom_drawer_widget.dart';
import 'package:personal_workout_app/features/home/widgets/exersize_tile_widget.dart';
import 'package:personal_workout_app/features/import/bloc/import_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:personal_workout_app/shared/widgets/no_exersizes_yet_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static MaterialPageRoute<void> route() {
    return MaterialPageRoute(
      builder: (context) {
        return const HomePage();
      },
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    NotificationService().setContext(context);
    context.read<LoadDataBloc>().add(const LoadDataEvent.load());
    context.read<LoadStatisticsBloc>().add(const LoadStatisticsEvent.load());
    context.read<ImportBloc>().add(const ImportEvent.load());
  }

  void _onReorder(int oldIndex, int newIndex) {
    var newNewIndex = newIndex;
    if (oldIndex < newIndex) {
      newNewIndex = newIndex - 1;
    }
    context.read<LoadDataBloc>().add(
          LoadDataEvent.reorder(
            oldIndex: oldIndex,
            newIndex: newNewIndex,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExportBloc, ExportState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: () {
            context.read<ImportBloc>().add(const ImportEvent.load());
          },
          failure: (message) {
            BottomSheetManager.showFailureBottomSheet(
              context: context,
              err: message,
            );
          },
        );
      },
      child: Scaffold(
        key: _key,
        drawer: CustomDrawer(scaffoldKey: _key),
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () => _key.currentState?.openDrawer(),
            icon: const Icon(
              Icons.menu,
            ),
          ),
          title: Text(
            LocaleKeys.exersizes.tr(),
          ),
          actions: [
            BlocBuilder<LoadDataBloc, LoadDataState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: SizedBox.new,
                  success: (exersize) {
                    if (exersize.isNotEmpty) {
                      return IconButton(
                        onPressed: () {
                          BottomSheetManager.showExportDataBottomSheet(
                            context: context,
                          );
                        },
                        icon: const Icon(
                          Icons.upload_file,
                          color: ColorName.c7587FF,
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                );
              },
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CreateOrUpdateExersize.route(),
                );
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        body: BlocBuilder<LoadDataBloc, LoadDataState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (List<Exersize> exersize) {
                if (exersize.isEmpty) {
                  return const NoExersizesYet();
                }
                return ReorderableListView.builder(
                  buildDefaultDragHandles: false,
                  proxyDecorator: _proxyDecorator,
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  onReorder: _onReorder,
                  itemCount: exersize.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExersizeTile(
                      key: ValueKey<int>(exersize[index].createdAt),
                      exersize: exersize[index],
                      index: index,
                    );
                  },
                );
              },
              orElse: SizedBox.new,
            );
          },
        ),
      ),
    );
  }

  Widget _proxyDecorator(
    Widget child,
    int index,
    Animation<double> animation,
  ) {
    return Material(
      color: ColorName.transparent,
      shadowColor: ColorName.transparent,
      child: child,
    );
  }
}
