import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_workout_app/config/translations/gen/locale_keys.g.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/bloc/exersize_crud_bloc.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/widgets/custom_textfield.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/widgets/duration_change_widget.dart';
import 'package:personal_workout_app/features/create_or_update_exersize/widgets/value_change_widget.dart';
import 'package:personal_workout_app/features/home/bloc/load_data_bloc.dart';
import 'package:personal_workout_app/features/statistics/bloc/load_statistics_bloc.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';
import 'package:personal_workout_app/shared/bottom_sheet/bottom_sheet_manager.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';

class CreateOrUpdateExersize extends StatefulWidget {
  const CreateOrUpdateExersize({this.createdAt, super.key});
  static MaterialPageRoute<void> route({int? createdAt}) {
    return MaterialPageRoute(
      builder: (context) {
        if (createdAt != null) {
          context.read<ExersizeCrudBloc>().add(
                ExersizeCrudEvent.load(
                  createdAt: createdAt,
                ),
              );
        }
        return CreateOrUpdateExersize(
          createdAt: createdAt,
        );
      },
    );
  }

  final int? createdAt;

  @override
  State<CreateOrUpdateExersize> createState() => _CreateExersizeState();
}

class _CreateExersizeState extends State<CreateOrUpdateExersize>
    with WidgetsBindingObserver {
  late final ScrollController _scrollController;
  late final TextEditingController _title;
  late final TextEditingController _description;
  // late final TextEditingController _videoUrl;

  late Exersize _temp;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).unfocus();
      });
    _title = TextEditingController(
      text: '',
    );
    _description = TextEditingController(
      text: '',
    );
    // _videoUrl = TextEditingController(
    //   text: '',
    // );

    _temp = Exersize.initial();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExersizeCrudBloc, ExersizeCrudState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.read<LoadDataBloc>().add(const LoadDataEvent.load());
            context
                .read<LoadStatisticsBloc>()
                .add(const LoadStatisticsEvent.load());
            Navigator.pop(context);
          },
          loaded: (exersize) {
            _title.text = exersize.title;
            _description.text = exersize.description;
            // _videoUrl.text = exersize.videoUrl;

            _temp = exersize;
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            if (_title.text.isNotEmpty) {
              await BottomSheetManager.showSaveExersizeBottomSheet(
                context: context,
                callback: _saveExersize,
              );
              return false;
            } else {
              return true;
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: AnimatedBuilder(
                animation: _title,
                builder: (_, __) {
                  return Text(
                    _title.text.isEmpty
                        ? LocaleKeys.create_exersize_page_title.tr()
                        : _title.text,
                  );
                },
              ),
              actions: [
                AnimatedBuilder(
                  animation: _title,
                  builder: (_, __) {
                    return IconButton(
                      onPressed: _title.text.isEmpty ? null : _saveExersize,
                      icon: Icon(
                        Icons.save,
                        color: _title.text.isEmpty
                            ? Theme.of(context).disabledColor
                            : ColorName.c7587FF,
                      ),
                    );
                  },
                )
              ],
            ),
            body: ListView(
              controller: _scrollController,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              children: [
                CustomTextField(
                  controller: _title,
                  hintText: LocaleKeys.create_exersize_page_inputs_title.tr(),
                  textCapitalization: TextCapitalization.words,
                  maxTextLength: 15,
                  textInputAction: TextInputAction.done,
                  allowWhiteSpace: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextField(
                  controller: _description,
                  hintText:
                      LocaleKeys.create_exersize_page_inputs_description.tr(),
                  maxLines: 6,
                  maxTextLength: 100,
                  textCapitalization: TextCapitalization.sentences,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  allowWhiteSpace: true,
                ),
                // const SizedBox(
                //   height: 8,
                // ),
                // CustomTextField(
                //   controller: _videoUrl,
                //  hintText: LocaleKeys.create_exersize_page_inputs_video.tr(),
                //   keyboardType: TextInputType.url,
                //   textInputAction: TextInputAction.done,
                // ),
                const SizedBox(
                  height: 16,
                ),
                ValueChangeWidget(
                  title: LocaleKeys.sets.tr(),
                  value: _temp.sets,
                  callback: (v) {
                    setState(() {
                      _temp = _temp.copyWith(
                        sets: v,
                      );
                    });
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                DurationChangeWidget(
                  title: LocaleKeys.create_exersize_page_inputs_sets_relax_time
                      .tr(),
                  duration: _temp.setsRelaxTime,
                  callback: (v) {
                    setState(() {
                      _temp = _temp.copyWith(
                        setsRelaxTime: v,
                      );
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ValueChangeWidget(
                  title: LocaleKeys.reps.tr(),
                  value: _temp.reps,
                  callback: (v) {
                    setState(() {
                      _temp = _temp.copyWith(
                        reps: v,
                      );
                    });
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                DurationChangeWidget(
                  title: LocaleKeys
                      .create_exersize_page_inputs_exersize_relax_time
                      .tr(),
                  duration: _temp.exersizeRelaxTime,
                  minValue: 60,
                  valueChangeStep: 30,
                  callback: (v) {
                    setState(() {
                      _temp = _temp.copyWith(
                        exersizeRelaxTime: v,
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _saveExersize() {
    FocusScope.of(context).unfocus();
    context.read<ExersizeCrudBloc>().add(
          ExersizeCrudEvent.save(
            exersize: _temp.copyWith(
              title: _title.text,
              description: _description.text,
              // videoUrl: _videoUrl.text,
            ),
          ),
        );
  }
}
