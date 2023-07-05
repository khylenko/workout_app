import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:personal_workout_app/shared/enums/stored_data_type.dart';
import 'package:personal_workout_app/shared/models/exersize_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataRepo {
  factory DataRepo() => _instance;
  DataRepo._() {
    if (_exersizeModel == null) {
      _init();
    }
  }
  static final DataRepo _instance = DataRepo._();

  ExersizeModel? _exersizeModel;
  ExersizeModel? get exersizeModel => _exersizeModel;

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();

    if (_exersizeModel != null) {
      _updateStatistics();
      try {
        await prefs.setString(
          StoredType.mainData.value,
          jsonEncode(
            _exersizeModel,
          ),
        );
      } catch (e) {
        log('DataRepo saveData Err => $e');
      }
    }
  }

  Future<void> restoreData({
    required String path,
  }) async {
    _exersizeModel = ExersizeModel.fromJson(
      jsonDecode(await File(path).readAsString()) as Map<String, dynamic>,
    );

    await saveData();
  }

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final data = prefs.getString(
        StoredType.mainData.value,
      );

      if (data != null) {
        _exersizeModel = ExersizeModel.fromJson(
          jsonDecode(data) as Map<String, dynamic>,
        );
      } else {
        throw ArgumentError('main_data is not initialized');
      }
    } catch (e) {
      log('DataRepo getData Err => $e');
    }
  }

  Future<Exersize?> get(int createdAt) async {
    if (_exersizeModel == null) return null;
    final index = _getIndex(_exersizeModel!.exersize, createdAt);
    if (!index.isNegative) {
      return _exersizeModel!.exersize[index];
    } else {
      return null;
    }
  }

  bool isLastExersize(int createdAt) {
    final index = _getIndex(_exersizeModel!.exersize, createdAt);

    return (_exersizeModel!.exersize.length - 1) == index;
  }

  Future<Exersize?> restoreFromStatistics(int createdAt) async {
    if (_exersizeModel == null) return null;
    final index = _getIndex(_exersizeModel!.statistics, createdAt);
    if (!index.isNegative) {
      await addOrUpdate(_exersizeModel!.statistics[index]);
      return _exersizeModel!.statistics[index];
    } else {
      return null;
    }
  }

  Future<void> addOrUpdate(Exersize exersize) async {
    final index = _getIndex(_exersizeModel!.exersize, exersize.createdAt);
    if (index.isNegative) {
      await _add(exersize);
    } else {
      await _update(exersize, index);
    }
  }

  int _getIndex(List<Exersize> iterable, int createdAt) {
    return iterable.indexWhere(
      (e) => e.createdAt == createdAt,
    );
  }

  Future<void> _add(Exersize exersize) async {
    final temp = exersize.copyWith(
      createdAt: DateTime.now().millisecondsSinceEpoch,
      title: _exersizeModel!.checkForExersizeTitleDuplicatesAndRenameIfNeeded(
        exersize.title,
      ),
    );

    _exersizeModel = _exersizeModel!.copyWith(
      exersize: [
        ..._exersizeModel!.exersize,
        temp,
      ],
    );
    await saveData();
  }

  Future<void> _update(Exersize exersize, int index) async {
    _exersizeModel = _exersizeModel!.copyWith(
      exersize: [..._exersizeModel!.exersize]..[index] = exersize.update(),
    );
    await saveData();
  }

  Future<void> delete(int createdAt) async {
    if (_exersizeModel == null) return;
    final temp = [..._exersizeModel!.exersize]..removeWhere(
        (e) => e.createdAt == createdAt,
      );
    _exersizeModel = _exersizeModel!.copyWith(
      exersize: temp,
    );

    if (_exersizeModel!.exersize.isEmpty) {
      _exersizeModel = ExersizeModel.initial();
    }
    await saveData();
  }

  Future<void> addProgressLogEntryStartDate(int createdAt) async {
    if (_exersizeModel == null) return;
    final index = _getIndex(_exersizeModel!.exersize, createdAt);

    if (!index.isNegative) {
      final exersize = _exersizeModel!.exersize[index];

      final temp = exersize.copyWith(
        progressLog: [
          ...exersize.progressLog,
          ProgressLog.initial(
            exersize.sets,
            exersize.reps,
          ),
        ],
      );
      await _update(temp, index);
      await saveData();
    }
  }

  Future<void> updateProgressLogEntryStopDate(int createdAt) async {
    if (_exersizeModel == null) return;
    final index = _getIndex(_exersizeModel!.exersize, createdAt);

    if (!index.isNegative) {
      final exersize = _exersizeModel!.exersize[index];

      final tempList = [
        ...exersize.progressLog.take(exersize.progressLog.length - 1),
        exersize.progressLog.last.copyWith(
          workoutStopDate: DateTime.now().millisecondsSinceEpoch,
        ),
      ];

      final tempEx = exersize.copyWith(
        progressLog: tempList,
      );
      await _update(tempEx, index);
      await saveData();
    }
  }

  Future<void> updateProgressLogEntrySet(
    int createdAt,
    int setNum,
    int completedReps,
  ) async {
    if (_exersizeModel == null) return;
    final index = _getIndex(_exersizeModel!.exersize, createdAt);

    if (!index.isNegative) {
      final exersize = _exersizeModel!.exersize[index];

      final tempSet = Set(
        setNum: setNum,
        completedReps: completedReps,
        completionTime: DateTime.now().millisecondsSinceEpoch,
      );

      final sets = [...exersize.progressLog.last.sets];

      final indexS = sets.indexWhere(
        (e) => e.setNum == setNum,
      );
      if (!indexS.isNegative) {
        sets[indexS] = tempSet;

        final tempList = [
          ...exersize.progressLog.take(exersize.progressLog.length - 1),
          exersize.progressLog.last.copyWith(
            sets: sets,
          ),
        ];

        final tempEx = exersize.copyWith(
          progressLog: tempList,
        );
        log('updateProgressLogEntrySet progressLog => ${exersize.progressLog}');
        await _update(tempEx, index);
        await saveData();
      }
    }
  }

  Future<void> reorder({
    required int oldIndex,
    required int newIndex,
  }) async {
    if (_exersizeModel == null) return;
    final temp = [..._exersizeModel!.exersize];
    final item = temp.removeAt(oldIndex);
    temp.insert(newIndex, item);
    _exersizeModel = _exersizeModel!.copyWith(exersize: temp);
    await saveData();
  }

  void _updateStatistics() {
    for (final exersize in _exersizeModel!.exersize) {
      final index = _getIndex(_exersizeModel!.statistics, exersize.createdAt);
      if (index.isNegative) {
        _exersizeModel = _exersizeModel!.copyWith(
          statistics: [
            ..._exersizeModel!.statistics,
            exersize,
          ],
        );
      } else {
        _exersizeModel = _exersizeModel!.copyWith(
          statistics: [..._exersizeModel!.statistics]..[index] = exersize,
        );
      }
    }
  }
}
