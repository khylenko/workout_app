// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exersize_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExersizeModel _$ExersizeModelFromJson(Map<String, dynamic> json) {
  return _ExersizeModel.fromJson(json);
}

/// @nodoc
mixin _$ExersizeModel {
  int get createdAt => throw _privateConstructorUsedError;
  List<Exersize> get exersize => throw _privateConstructorUsedError;
  List<Exersize> get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExersizeModelCopyWith<ExersizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExersizeModelCopyWith<$Res> {
  factory $ExersizeModelCopyWith(
          ExersizeModel value, $Res Function(ExersizeModel) then) =
      _$ExersizeModelCopyWithImpl<$Res, ExersizeModel>;
  @useResult
  $Res call(
      {int createdAt, List<Exersize> exersize, List<Exersize> statistics});
}

/// @nodoc
class _$ExersizeModelCopyWithImpl<$Res, $Val extends ExersizeModel>
    implements $ExersizeModelCopyWith<$Res> {
  _$ExersizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? exersize = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      exersize: null == exersize
          ? _value.exersize
          : exersize // ignore: cast_nullable_to_non_nullable
              as List<Exersize>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Exersize>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExersizeModelCopyWith<$Res>
    implements $ExersizeModelCopyWith<$Res> {
  factory _$$_ExersizeModelCopyWith(
          _$_ExersizeModel value, $Res Function(_$_ExersizeModel) then) =
      __$$_ExersizeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int createdAt, List<Exersize> exersize, List<Exersize> statistics});
}

/// @nodoc
class __$$_ExersizeModelCopyWithImpl<$Res>
    extends _$ExersizeModelCopyWithImpl<$Res, _$_ExersizeModel>
    implements _$$_ExersizeModelCopyWith<$Res> {
  __$$_ExersizeModelCopyWithImpl(
      _$_ExersizeModel _value, $Res Function(_$_ExersizeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? exersize = null,
    Object? statistics = null,
  }) {
    return _then(_$_ExersizeModel(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      exersize: null == exersize
          ? _value._exersize
          : exersize // ignore: cast_nullable_to_non_nullable
              as List<Exersize>,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Exersize>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExersizeModel extends _ExersizeModel {
  const _$_ExersizeModel(
      {required this.createdAt,
      required final List<Exersize> exersize,
      required final List<Exersize> statistics})
      : _exersize = exersize,
        _statistics = statistics,
        super._();

  factory _$_ExersizeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExersizeModelFromJson(json);

  @override
  final int createdAt;
  final List<Exersize> _exersize;
  @override
  List<Exersize> get exersize {
    if (_exersize is EqualUnmodifiableListView) return _exersize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exersize);
  }

  final List<Exersize> _statistics;
  @override
  List<Exersize> get statistics {
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statistics);
  }

  @override
  String toString() {
    return 'ExersizeModel(createdAt: $createdAt, exersize: $exersize, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExersizeModel &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._exersize, _exersize) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      const DeepCollectionEquality().hash(_exersize),
      const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExersizeModelCopyWith<_$_ExersizeModel> get copyWith =>
      __$$_ExersizeModelCopyWithImpl<_$_ExersizeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExersizeModelToJson(
      this,
    );
  }
}

abstract class _ExersizeModel extends ExersizeModel {
  const factory _ExersizeModel(
      {required final int createdAt,
      required final List<Exersize> exersize,
      required final List<Exersize> statistics}) = _$_ExersizeModel;
  const _ExersizeModel._() : super._();

  factory _ExersizeModel.fromJson(Map<String, dynamic> json) =
      _$_ExersizeModel.fromJson;

  @override
  int get createdAt;
  @override
  List<Exersize> get exersize;
  @override
  List<Exersize> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_ExersizeModelCopyWith<_$_ExersizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Exersize _$ExersizeFromJson(Map<String, dynamic> json) {
  return _Exersize.fromJson(json);
}

/// @nodoc
mixin _$Exersize {
  int get createdAt => throw _privateConstructorUsedError;
  int get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get setsRelaxTime => throw _privateConstructorUsedError;
  int get exersizeRelaxTime => throw _privateConstructorUsedError;
  List<ProgressLog> get progressLog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExersizeCopyWith<Exersize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExersizeCopyWith<$Res> {
  factory $ExersizeCopyWith(Exersize value, $Res Function(Exersize) then) =
      _$ExersizeCopyWithImpl<$Res, Exersize>;
  @useResult
  $Res call(
      {int createdAt,
      int updatedAt,
      String title,
      String description,
      String videoUrl,
      int sets,
      int reps,
      int setsRelaxTime,
      int exersizeRelaxTime,
      List<ProgressLog> progressLog});
}

/// @nodoc
class _$ExersizeCopyWithImpl<$Res, $Val extends Exersize>
    implements $ExersizeCopyWith<$Res> {
  _$ExersizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? description = null,
    Object? videoUrl = null,
    Object? sets = null,
    Object? reps = null,
    Object? setsRelaxTime = null,
    Object? exersizeRelaxTime = null,
    Object? progressLog = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      setsRelaxTime: null == setsRelaxTime
          ? _value.setsRelaxTime
          : setsRelaxTime // ignore: cast_nullable_to_non_nullable
              as int,
      exersizeRelaxTime: null == exersizeRelaxTime
          ? _value.exersizeRelaxTime
          : exersizeRelaxTime // ignore: cast_nullable_to_non_nullable
              as int,
      progressLog: null == progressLog
          ? _value.progressLog
          : progressLog // ignore: cast_nullable_to_non_nullable
              as List<ProgressLog>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExersizeCopyWith<$Res> implements $ExersizeCopyWith<$Res> {
  factory _$$_ExersizeCopyWith(
          _$_Exersize value, $Res Function(_$_Exersize) then) =
      __$$_ExersizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int createdAt,
      int updatedAt,
      String title,
      String description,
      String videoUrl,
      int sets,
      int reps,
      int setsRelaxTime,
      int exersizeRelaxTime,
      List<ProgressLog> progressLog});
}

/// @nodoc
class __$$_ExersizeCopyWithImpl<$Res>
    extends _$ExersizeCopyWithImpl<$Res, _$_Exersize>
    implements _$$_ExersizeCopyWith<$Res> {
  __$$_ExersizeCopyWithImpl(
      _$_Exersize _value, $Res Function(_$_Exersize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? description = null,
    Object? videoUrl = null,
    Object? sets = null,
    Object? reps = null,
    Object? setsRelaxTime = null,
    Object? exersizeRelaxTime = null,
    Object? progressLog = null,
  }) {
    return _then(_$_Exersize(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      setsRelaxTime: null == setsRelaxTime
          ? _value.setsRelaxTime
          : setsRelaxTime // ignore: cast_nullable_to_non_nullable
              as int,
      exersizeRelaxTime: null == exersizeRelaxTime
          ? _value.exersizeRelaxTime
          : exersizeRelaxTime // ignore: cast_nullable_to_non_nullable
              as int,
      progressLog: null == progressLog
          ? _value._progressLog
          : progressLog // ignore: cast_nullable_to_non_nullable
              as List<ProgressLog>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exersize extends _Exersize {
  const _$_Exersize(
      {required this.createdAt,
      required this.updatedAt,
      required this.title,
      required this.description,
      required this.videoUrl,
      required this.sets,
      required this.reps,
      required this.setsRelaxTime,
      required this.exersizeRelaxTime,
      required final List<ProgressLog> progressLog})
      : _progressLog = progressLog,
        super._();

  factory _$_Exersize.fromJson(Map<String, dynamic> json) =>
      _$$_ExersizeFromJson(json);

  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final String title;
  @override
  final String description;
  @override
  final String videoUrl;
  @override
  final int sets;
  @override
  final int reps;
  @override
  final int setsRelaxTime;
  @override
  final int exersizeRelaxTime;
  final List<ProgressLog> _progressLog;
  @override
  List<ProgressLog> get progressLog {
    if (_progressLog is EqualUnmodifiableListView) return _progressLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_progressLog);
  }

  @override
  String toString() {
    return 'Exersize(createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, videoUrl: $videoUrl, sets: $sets, reps: $reps, setsRelaxTime: $setsRelaxTime, exersizeRelaxTime: $exersizeRelaxTime, progressLog: $progressLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exersize &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.setsRelaxTime, setsRelaxTime) ||
                other.setsRelaxTime == setsRelaxTime) &&
            (identical(other.exersizeRelaxTime, exersizeRelaxTime) ||
                other.exersizeRelaxTime == exersizeRelaxTime) &&
            const DeepCollectionEquality()
                .equals(other._progressLog, _progressLog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      title,
      description,
      videoUrl,
      sets,
      reps,
      setsRelaxTime,
      exersizeRelaxTime,
      const DeepCollectionEquality().hash(_progressLog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExersizeCopyWith<_$_Exersize> get copyWith =>
      __$$_ExersizeCopyWithImpl<_$_Exersize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExersizeToJson(
      this,
    );
  }
}

abstract class _Exersize extends Exersize {
  const factory _Exersize(
      {required final int createdAt,
      required final int updatedAt,
      required final String title,
      required final String description,
      required final String videoUrl,
      required final int sets,
      required final int reps,
      required final int setsRelaxTime,
      required final int exersizeRelaxTime,
      required final List<ProgressLog> progressLog}) = _$_Exersize;
  const _Exersize._() : super._();

  factory _Exersize.fromJson(Map<String, dynamic> json) = _$_Exersize.fromJson;

  @override
  int get createdAt;
  @override
  int get updatedAt;
  @override
  String get title;
  @override
  String get description;
  @override
  String get videoUrl;
  @override
  int get sets;
  @override
  int get reps;
  @override
  int get setsRelaxTime;
  @override
  int get exersizeRelaxTime;
  @override
  List<ProgressLog> get progressLog;
  @override
  @JsonKey(ignore: true)
  _$$_ExersizeCopyWith<_$_Exersize> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressLog _$ProgressLogFromJson(Map<String, dynamic> json) {
  return _ProgressLog.fromJson(json);
}

/// @nodoc
mixin _$ProgressLog {
  int get workoutStartDate => throw _privateConstructorUsedError;
  int get workoutStopDate => throw _privateConstructorUsedError;
  List<Set> get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressLogCopyWith<ProgressLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressLogCopyWith<$Res> {
  factory $ProgressLogCopyWith(
          ProgressLog value, $Res Function(ProgressLog) then) =
      _$ProgressLogCopyWithImpl<$Res, ProgressLog>;
  @useResult
  $Res call({int workoutStartDate, int workoutStopDate, List<Set> sets});
}

/// @nodoc
class _$ProgressLogCopyWithImpl<$Res, $Val extends ProgressLog>
    implements $ProgressLogCopyWith<$Res> {
  _$ProgressLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutStartDate = null,
    Object? workoutStopDate = null,
    Object? sets = null,
  }) {
    return _then(_value.copyWith(
      workoutStartDate: null == workoutStartDate
          ? _value.workoutStartDate
          : workoutStartDate // ignore: cast_nullable_to_non_nullable
              as int,
      workoutStopDate: null == workoutStopDate
          ? _value.workoutStopDate
          : workoutStopDate // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgressLogCopyWith<$Res>
    implements $ProgressLogCopyWith<$Res> {
  factory _$$_ProgressLogCopyWith(
          _$_ProgressLog value, $Res Function(_$_ProgressLog) then) =
      __$$_ProgressLogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int workoutStartDate, int workoutStopDate, List<Set> sets});
}

/// @nodoc
class __$$_ProgressLogCopyWithImpl<$Res>
    extends _$ProgressLogCopyWithImpl<$Res, _$_ProgressLog>
    implements _$$_ProgressLogCopyWith<$Res> {
  __$$_ProgressLogCopyWithImpl(
      _$_ProgressLog _value, $Res Function(_$_ProgressLog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutStartDate = null,
    Object? workoutStopDate = null,
    Object? sets = null,
  }) {
    return _then(_$_ProgressLog(
      workoutStartDate: null == workoutStartDate
          ? _value.workoutStartDate
          : workoutStartDate // ignore: cast_nullable_to_non_nullable
              as int,
      workoutStopDate: null == workoutStopDate
          ? _value.workoutStopDate
          : workoutStopDate // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProgressLog extends _ProgressLog {
  const _$_ProgressLog(
      {required this.workoutStartDate,
      required this.workoutStopDate,
      required final List<Set> sets})
      : _sets = sets,
        super._();

  factory _$_ProgressLog.fromJson(Map<String, dynamic> json) =>
      _$$_ProgressLogFromJson(json);

  @override
  final int workoutStartDate;
  @override
  final int workoutStopDate;
  final List<Set> _sets;
  @override
  List<Set> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  String toString() {
    return 'ProgressLog(workoutStartDate: $workoutStartDate, workoutStopDate: $workoutStopDate, sets: $sets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressLog &&
            (identical(other.workoutStartDate, workoutStartDate) ||
                other.workoutStartDate == workoutStartDate) &&
            (identical(other.workoutStopDate, workoutStopDate) ||
                other.workoutStopDate == workoutStopDate) &&
            const DeepCollectionEquality().equals(other._sets, _sets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workoutStartDate,
      workoutStopDate, const DeepCollectionEquality().hash(_sets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressLogCopyWith<_$_ProgressLog> get copyWith =>
      __$$_ProgressLogCopyWithImpl<_$_ProgressLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgressLogToJson(
      this,
    );
  }
}

abstract class _ProgressLog extends ProgressLog {
  const factory _ProgressLog(
      {required final int workoutStartDate,
      required final int workoutStopDate,
      required final List<Set> sets}) = _$_ProgressLog;
  const _ProgressLog._() : super._();

  factory _ProgressLog.fromJson(Map<String, dynamic> json) =
      _$_ProgressLog.fromJson;

  @override
  int get workoutStartDate;
  @override
  int get workoutStopDate;
  @override
  List<Set> get sets;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressLogCopyWith<_$_ProgressLog> get copyWith =>
      throw _privateConstructorUsedError;
}

Set _$SetFromJson(Map<String, dynamic> json) {
  return _Set.fromJson(json);
}

/// @nodoc
mixin _$Set {
  int get setNum => throw _privateConstructorUsedError;
  int get completedReps => throw _privateConstructorUsedError;
  int get completionTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetCopyWith<Set> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res, Set>;
  @useResult
  $Res call({int setNum, int completedReps, int completionTime});
}

/// @nodoc
class _$SetCopyWithImpl<$Res, $Val extends Set> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setNum = null,
    Object? completedReps = null,
    Object? completionTime = null,
  }) {
    return _then(_value.copyWith(
      setNum: null == setNum
          ? _value.setNum
          : setNum // ignore: cast_nullable_to_non_nullable
              as int,
      completedReps: null == completedReps
          ? _value.completedReps
          : completedReps // ignore: cast_nullable_to_non_nullable
              as int,
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$$_SetCopyWith(_$_Set value, $Res Function(_$_Set) then) =
      __$$_SetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int setNum, int completedReps, int completionTime});
}

/// @nodoc
class __$$_SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res, _$_Set>
    implements _$$_SetCopyWith<$Res> {
  __$$_SetCopyWithImpl(_$_Set _value, $Res Function(_$_Set) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setNum = null,
    Object? completedReps = null,
    Object? completionTime = null,
  }) {
    return _then(_$_Set(
      setNum: null == setNum
          ? _value.setNum
          : setNum // ignore: cast_nullable_to_non_nullable
              as int,
      completedReps: null == completedReps
          ? _value.completedReps
          : completedReps // ignore: cast_nullable_to_non_nullable
              as int,
      completionTime: null == completionTime
          ? _value.completionTime
          : completionTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Set implements _Set {
  const _$_Set(
      {required this.setNum,
      required this.completedReps,
      required this.completionTime});

  factory _$_Set.fromJson(Map<String, dynamic> json) => _$$_SetFromJson(json);

  @override
  final int setNum;
  @override
  final int completedReps;
  @override
  final int completionTime;

  @override
  String toString() {
    return 'Set(setNum: $setNum, completedReps: $completedReps, completionTime: $completionTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Set &&
            (identical(other.setNum, setNum) || other.setNum == setNum) &&
            (identical(other.completedReps, completedReps) ||
                other.completedReps == completedReps) &&
            (identical(other.completionTime, completionTime) ||
                other.completionTime == completionTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, setNum, completedReps, completionTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetCopyWith<_$_Set> get copyWith =>
      __$$_SetCopyWithImpl<_$_Set>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetToJson(
      this,
    );
  }
}

abstract class _Set implements Set {
  const factory _Set(
      {required final int setNum,
      required final int completedReps,
      required final int completionTime}) = _$_Set;

  factory _Set.fromJson(Map<String, dynamic> json) = _$_Set.fromJson;

  @override
  int get setNum;
  @override
  int get completedReps;
  @override
  int get completionTime;
  @override
  @JsonKey(ignore: true)
  _$$_SetCopyWith<_$_Set> get copyWith => throw _privateConstructorUsedError;
}
