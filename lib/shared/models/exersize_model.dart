// To parse this JSON data, do
//
//     final exersizeModel = exersizeModelFromJson(jsonString);

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exersize_model.freezed.dart';
part 'exersize_model.g.dart';

@freezed
class ExersizeModel with _$ExersizeModel {
  const factory ExersizeModel({
    required int createdAt,
    required List<Exersize> exersize,
    required List<Exersize> statistics,
  }) = _ExersizeModel;
  const ExersizeModel._();

  factory ExersizeModel.fromJson(Map<String, dynamic> json) =>
      _$ExersizeModelFromJson(json);

  factory ExersizeModel.initial() => ExersizeModel(
        createdAt: DateTime.now().millisecondsSinceEpoch,
        exersize: [],
        statistics: [],
      );

  String checkForExersizeTitleDuplicatesAndRenameIfNeeded(String title) {
    final duplicates = exersize
        .map(
          (e) => e.title,
        )
        .where(
          (e) => e == title,
        );

    if (duplicates.isNotEmpty) {
      return title + (duplicates.length + 1).toString();
    } else {
      return title;
    }
  }

  String checkForStatisticsTitleDuplicatesAndRenameIfNeeded(String title) {
    final duplicates = statistics
        .map(
          (e) => e.title,
        )
        .where(
          (e) => e == title,
        );

    if (duplicates.isNotEmpty) {
      return title + (duplicates.length + 1).toString();
    } else {
      return title;
    }
  }
}

@freezed
class Exersize with _$Exersize {
  const factory Exersize({
    required int createdAt,
    required int updatedAt,
    required String title,
    required String description,
    required String videoUrl,
    required int sets,
    required int reps,
    required int setsRelaxTime,
    required int exersizeRelaxTime,
    required List<ProgressLog> progressLog,
  }) = _Exersize;

  const Exersize._();
  factory Exersize.fromJson(Map<String, dynamic> json) =>
      _$ExersizeFromJson(json);

  factory Exersize.initial() {
    return const Exersize(
      createdAt: 0,
      updatedAt: 0,
      title: '',
      description: '',
      videoUrl: '',
      sets: 1,
      reps: 1,
      setsRelaxTime: 60,
      exersizeRelaxTime: 240,
      progressLog: [],
    );
  }
  Exersize update() {
    return copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch);
  }

  bool get canIncreaseSetsOrReps {
    final logs = progressLog.reversed.take(3);
    if (logs.length == 3) {
      return logs
              .map((e) => e.sets)
              .expand((i) => i)
              .map((e) => e.completedReps)
              .average >=
          reps;
    } else {
      return false;
    }
  }

  Set? get currentSet {
    try {
      return progressLog.last.sets.firstWhere(
        (e) => e.completionTime == 0,
      );
    } catch (_) {
      return null;
    }
  }

  bool get isCompletedToday {
    try {
      final date = DateTime.fromMillisecondsSinceEpoch(
        progressLog.last.workoutStopDate,
      );
      final dateFormatted = DateFormat('ddMMyyyy').format(date);
      final dateFormattedToday = DateFormat('ddMMyyyy').format(DateTime.now());
      return dateFormatted == dateFormattedToday;
    } catch (_) {
      return false;
    }
  }

  int get sumOfAllReps => progressLog.map((e) => e.sumOfAllReps).reduce(
        (a, b) => a + b,
      );
  int get averageOfAllReps =>
      progressLog.map((e) => e.sumOfAllReps).average.round();

  int get minReps {
    try {
      return progressLog
          .map((e) => e.sets)
          .expand((e) => e)
          .map(
            (e) => e.completedReps,
          )
          .min;
    } catch (_) {
      return 0;
    }
  }

  int get maxReps {
    try {
      return progressLog
          .map((e) => e.sets)
          .expand((e) => e)
          .map(
            (e) => e.completedReps,
          )
          .max;
    } catch (_) {
      return reps;
    }
  }

  bool get isLastSet => currentSet!.setNum == sets;
}

@freezed
class ProgressLog with _$ProgressLog {
  const factory ProgressLog({
    required int workoutStartDate,
    required int workoutStopDate,
    required List<Set> sets,
  }) = _ProgressLog;

  const ProgressLog._();

  factory ProgressLog.fromJson(Map<String, dynamic> json) =>
      _$ProgressLogFromJson(json);

  factory ProgressLog.initial(int sets, int reps) => ProgressLog(
        workoutStartDate: DateTime.now().millisecondsSinceEpoch,
        workoutStopDate: 0,
        sets: List.generate(
          sets,
          (index) => Set(
            setNum: index + 1,
            completedReps: reps,
            completionTime: 0,
          ),
        ),
      );

  int get sumOfAllReps => sets.map((e) => e.completedReps).reduce(
        (a, b) => a + b,
      );
}

@freezed
class Set with _$Set {
  const factory Set({
    required int setNum,
    required int completedReps,
    required int completionTime,
  }) = _Set;

  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);
}
