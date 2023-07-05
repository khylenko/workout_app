// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exersize_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExersizeModel _$$_ExersizeModelFromJson(Map<String, dynamic> json) =>
    _$_ExersizeModel(
      createdAt: json['createdAt'] as int,
      exersize: (json['exersize'] as List<dynamic>)
          .map((e) => Exersize.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: (json['statistics'] as List<dynamic>)
          .map((e) => Exersize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExersizeModelToJson(_$_ExersizeModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'exersize': instance.exersize,
      'statistics': instance.statistics,
    };

_$_Exersize _$$_ExersizeFromJson(Map<String, dynamic> json) => _$_Exersize(
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      videoUrl: json['videoUrl'] as String,
      sets: json['sets'] as int,
      reps: json['reps'] as int,
      setsRelaxTime: json['setsRelaxTime'] as int,
      exersizeRelaxTime: json['exersizeRelaxTime'] as int,
      progressLog: (json['progressLog'] as List<dynamic>)
          .map((e) => ProgressLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExersizeToJson(_$_Exersize instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'sets': instance.sets,
      'reps': instance.reps,
      'setsRelaxTime': instance.setsRelaxTime,
      'exersizeRelaxTime': instance.exersizeRelaxTime,
      'progressLog': instance.progressLog,
    };

_$_ProgressLog _$$_ProgressLogFromJson(Map<String, dynamic> json) =>
    _$_ProgressLog(
      workoutStartDate: json['workoutStartDate'] as int,
      workoutStopDate: json['workoutStopDate'] as int,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => Set.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProgressLogToJson(_$_ProgressLog instance) =>
    <String, dynamic>{
      'workoutStartDate': instance.workoutStartDate,
      'workoutStopDate': instance.workoutStopDate,
      'sets': instance.sets,
    };

_$_Set _$$_SetFromJson(Map<String, dynamic> json) => _$_Set(
      setNum: json['setNum'] as int,
      completedReps: json['completedReps'] as int,
      completionTime: json['completionTime'] as int,
    );

Map<String, dynamic> _$$_SetToJson(_$_Set instance) => <String, dynamic>{
      'setNum': instance.setNum,
      'completedReps': instance.completedReps,
      'completionTime': instance.completionTime,
    };
