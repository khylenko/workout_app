// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutEvent {
  int get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int createdAt) loadExersize,
    required TResult Function(int createdAt) updateWorkoutStartDate,
    required TResult Function(int createdAt, int setNum, int completedReps)
        updateSet,
    required TResult Function(int createdAt) updateWorkoutEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int createdAt)? loadExersize,
    TResult? Function(int createdAt)? updateWorkoutStartDate,
    TResult? Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult? Function(int createdAt)? updateWorkoutEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int createdAt)? loadExersize,
    TResult Function(int createdAt)? updateWorkoutStartDate,
    TResult Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult Function(int createdAt)? updateWorkoutEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExersize value) loadExersize,
    required TResult Function(_UpdateWorkoutStartDate value)
        updateWorkoutStartDate,
    required TResult Function(_UpdateSet value) updateSet,
    required TResult Function(_UpdateWorkoutEndDate value) updateWorkoutEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadExersize value)? loadExersize,
    TResult? Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult? Function(_UpdateSet value)? updateSet,
    TResult? Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExersize value)? loadExersize,
    TResult Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult Function(_UpdateSet value)? updateSet,
    TResult Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutEventCopyWith<WorkoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res, WorkoutEvent>;
  @useResult
  $Res call({int createdAt});
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res, $Val extends WorkoutEvent>
    implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadExersizeCopyWith<$Res>
    implements $WorkoutEventCopyWith<$Res> {
  factory _$$_LoadExersizeCopyWith(
          _$_LoadExersize value, $Res Function(_$_LoadExersize) then) =
      __$$_LoadExersizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createdAt});
}

/// @nodoc
class __$$_LoadExersizeCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_LoadExersize>
    implements _$$_LoadExersizeCopyWith<$Res> {
  __$$_LoadExersizeCopyWithImpl(
      _$_LoadExersize _value, $Res Function(_$_LoadExersize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_$_LoadExersize(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadExersize implements _LoadExersize {
  const _$_LoadExersize({required this.createdAt});

  @override
  final int createdAt;

  @override
  String toString() {
    return 'WorkoutEvent.loadExersize(createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadExersize &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadExersizeCopyWith<_$_LoadExersize> get copyWith =>
      __$$_LoadExersizeCopyWithImpl<_$_LoadExersize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int createdAt) loadExersize,
    required TResult Function(int createdAt) updateWorkoutStartDate,
    required TResult Function(int createdAt, int setNum, int completedReps)
        updateSet,
    required TResult Function(int createdAt) updateWorkoutEndDate,
  }) {
    return loadExersize(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int createdAt)? loadExersize,
    TResult? Function(int createdAt)? updateWorkoutStartDate,
    TResult? Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult? Function(int createdAt)? updateWorkoutEndDate,
  }) {
    return loadExersize?.call(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int createdAt)? loadExersize,
    TResult Function(int createdAt)? updateWorkoutStartDate,
    TResult Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult Function(int createdAt)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (loadExersize != null) {
      return loadExersize(createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExersize value) loadExersize,
    required TResult Function(_UpdateWorkoutStartDate value)
        updateWorkoutStartDate,
    required TResult Function(_UpdateSet value) updateSet,
    required TResult Function(_UpdateWorkoutEndDate value) updateWorkoutEndDate,
  }) {
    return loadExersize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadExersize value)? loadExersize,
    TResult? Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult? Function(_UpdateSet value)? updateSet,
    TResult? Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
  }) {
    return loadExersize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExersize value)? loadExersize,
    TResult Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult Function(_UpdateSet value)? updateSet,
    TResult Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (loadExersize != null) {
      return loadExersize(this);
    }
    return orElse();
  }
}

abstract class _LoadExersize implements WorkoutEvent {
  const factory _LoadExersize({required final int createdAt}) = _$_LoadExersize;

  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_LoadExersizeCopyWith<_$_LoadExersize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateWorkoutStartDateCopyWith<$Res>
    implements $WorkoutEventCopyWith<$Res> {
  factory _$$_UpdateWorkoutStartDateCopyWith(_$_UpdateWorkoutStartDate value,
          $Res Function(_$_UpdateWorkoutStartDate) then) =
      __$$_UpdateWorkoutStartDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createdAt});
}

/// @nodoc
class __$$_UpdateWorkoutStartDateCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_UpdateWorkoutStartDate>
    implements _$$_UpdateWorkoutStartDateCopyWith<$Res> {
  __$$_UpdateWorkoutStartDateCopyWithImpl(_$_UpdateWorkoutStartDate _value,
      $Res Function(_$_UpdateWorkoutStartDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_$_UpdateWorkoutStartDate(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateWorkoutStartDate implements _UpdateWorkoutStartDate {
  const _$_UpdateWorkoutStartDate({required this.createdAt});

  @override
  final int createdAt;

  @override
  String toString() {
    return 'WorkoutEvent.updateWorkoutStartDate(createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateWorkoutStartDate &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateWorkoutStartDateCopyWith<_$_UpdateWorkoutStartDate> get copyWith =>
      __$$_UpdateWorkoutStartDateCopyWithImpl<_$_UpdateWorkoutStartDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int createdAt) loadExersize,
    required TResult Function(int createdAt) updateWorkoutStartDate,
    required TResult Function(int createdAt, int setNum, int completedReps)
        updateSet,
    required TResult Function(int createdAt) updateWorkoutEndDate,
  }) {
    return updateWorkoutStartDate(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int createdAt)? loadExersize,
    TResult? Function(int createdAt)? updateWorkoutStartDate,
    TResult? Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult? Function(int createdAt)? updateWorkoutEndDate,
  }) {
    return updateWorkoutStartDate?.call(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int createdAt)? loadExersize,
    TResult Function(int createdAt)? updateWorkoutStartDate,
    TResult Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult Function(int createdAt)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateWorkoutStartDate != null) {
      return updateWorkoutStartDate(createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExersize value) loadExersize,
    required TResult Function(_UpdateWorkoutStartDate value)
        updateWorkoutStartDate,
    required TResult Function(_UpdateSet value) updateSet,
    required TResult Function(_UpdateWorkoutEndDate value) updateWorkoutEndDate,
  }) {
    return updateWorkoutStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadExersize value)? loadExersize,
    TResult? Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult? Function(_UpdateSet value)? updateSet,
    TResult? Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
  }) {
    return updateWorkoutStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExersize value)? loadExersize,
    TResult Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult Function(_UpdateSet value)? updateSet,
    TResult Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateWorkoutStartDate != null) {
      return updateWorkoutStartDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateWorkoutStartDate implements WorkoutEvent {
  const factory _UpdateWorkoutStartDate({required final int createdAt}) =
      _$_UpdateWorkoutStartDate;

  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateWorkoutStartDateCopyWith<_$_UpdateWorkoutStartDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSetCopyWith<$Res>
    implements $WorkoutEventCopyWith<$Res> {
  factory _$$_UpdateSetCopyWith(
          _$_UpdateSet value, $Res Function(_$_UpdateSet) then) =
      __$$_UpdateSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createdAt, int setNum, int completedReps});
}

/// @nodoc
class __$$_UpdateSetCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_UpdateSet>
    implements _$$_UpdateSetCopyWith<$Res> {
  __$$_UpdateSetCopyWithImpl(
      _$_UpdateSet _value, $Res Function(_$_UpdateSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? setNum = null,
    Object? completedReps = null,
  }) {
    return _then(_$_UpdateSet(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      setNum: null == setNum
          ? _value.setNum
          : setNum // ignore: cast_nullable_to_non_nullable
              as int,
      completedReps: null == completedReps
          ? _value.completedReps
          : completedReps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateSet implements _UpdateSet {
  const _$_UpdateSet(
      {required this.createdAt,
      required this.setNum,
      required this.completedReps});

  @override
  final int createdAt;
  @override
  final int setNum;
  @override
  final int completedReps;

  @override
  String toString() {
    return 'WorkoutEvent.updateSet(createdAt: $createdAt, setNum: $setNum, completedReps: $completedReps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSet &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.setNum, setNum) || other.setNum == setNum) &&
            (identical(other.completedReps, completedReps) ||
                other.completedReps == completedReps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, setNum, completedReps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSetCopyWith<_$_UpdateSet> get copyWith =>
      __$$_UpdateSetCopyWithImpl<_$_UpdateSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int createdAt) loadExersize,
    required TResult Function(int createdAt) updateWorkoutStartDate,
    required TResult Function(int createdAt, int setNum, int completedReps)
        updateSet,
    required TResult Function(int createdAt) updateWorkoutEndDate,
  }) {
    return updateSet(createdAt, setNum, completedReps);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int createdAt)? loadExersize,
    TResult? Function(int createdAt)? updateWorkoutStartDate,
    TResult? Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult? Function(int createdAt)? updateWorkoutEndDate,
  }) {
    return updateSet?.call(createdAt, setNum, completedReps);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int createdAt)? loadExersize,
    TResult Function(int createdAt)? updateWorkoutStartDate,
    TResult Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult Function(int createdAt)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateSet != null) {
      return updateSet(createdAt, setNum, completedReps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExersize value) loadExersize,
    required TResult Function(_UpdateWorkoutStartDate value)
        updateWorkoutStartDate,
    required TResult Function(_UpdateSet value) updateSet,
    required TResult Function(_UpdateWorkoutEndDate value) updateWorkoutEndDate,
  }) {
    return updateSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadExersize value)? loadExersize,
    TResult? Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult? Function(_UpdateSet value)? updateSet,
    TResult? Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
  }) {
    return updateSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExersize value)? loadExersize,
    TResult Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult Function(_UpdateSet value)? updateSet,
    TResult Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateSet != null) {
      return updateSet(this);
    }
    return orElse();
  }
}

abstract class _UpdateSet implements WorkoutEvent {
  const factory _UpdateSet(
      {required final int createdAt,
      required final int setNum,
      required final int completedReps}) = _$_UpdateSet;

  @override
  int get createdAt;
  int get setNum;
  int get completedReps;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSetCopyWith<_$_UpdateSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateWorkoutEndDateCopyWith<$Res>
    implements $WorkoutEventCopyWith<$Res> {
  factory _$$_UpdateWorkoutEndDateCopyWith(_$_UpdateWorkoutEndDate value,
          $Res Function(_$_UpdateWorkoutEndDate) then) =
      __$$_UpdateWorkoutEndDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createdAt});
}

/// @nodoc
class __$$_UpdateWorkoutEndDateCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_UpdateWorkoutEndDate>
    implements _$$_UpdateWorkoutEndDateCopyWith<$Res> {
  __$$_UpdateWorkoutEndDateCopyWithImpl(_$_UpdateWorkoutEndDate _value,
      $Res Function(_$_UpdateWorkoutEndDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_$_UpdateWorkoutEndDate(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateWorkoutEndDate implements _UpdateWorkoutEndDate {
  const _$_UpdateWorkoutEndDate({required this.createdAt});

  @override
  final int createdAt;

  @override
  String toString() {
    return 'WorkoutEvent.updateWorkoutEndDate(createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateWorkoutEndDate &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateWorkoutEndDateCopyWith<_$_UpdateWorkoutEndDate> get copyWith =>
      __$$_UpdateWorkoutEndDateCopyWithImpl<_$_UpdateWorkoutEndDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int createdAt) loadExersize,
    required TResult Function(int createdAt) updateWorkoutStartDate,
    required TResult Function(int createdAt, int setNum, int completedReps)
        updateSet,
    required TResult Function(int createdAt) updateWorkoutEndDate,
  }) {
    return updateWorkoutEndDate(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int createdAt)? loadExersize,
    TResult? Function(int createdAt)? updateWorkoutStartDate,
    TResult? Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult? Function(int createdAt)? updateWorkoutEndDate,
  }) {
    return updateWorkoutEndDate?.call(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int createdAt)? loadExersize,
    TResult Function(int createdAt)? updateWorkoutStartDate,
    TResult Function(int createdAt, int setNum, int completedReps)? updateSet,
    TResult Function(int createdAt)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateWorkoutEndDate != null) {
      return updateWorkoutEndDate(createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExersize value) loadExersize,
    required TResult Function(_UpdateWorkoutStartDate value)
        updateWorkoutStartDate,
    required TResult Function(_UpdateSet value) updateSet,
    required TResult Function(_UpdateWorkoutEndDate value) updateWorkoutEndDate,
  }) {
    return updateWorkoutEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadExersize value)? loadExersize,
    TResult? Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult? Function(_UpdateSet value)? updateSet,
    TResult? Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
  }) {
    return updateWorkoutEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExersize value)? loadExersize,
    TResult Function(_UpdateWorkoutStartDate value)? updateWorkoutStartDate,
    TResult Function(_UpdateSet value)? updateSet,
    TResult Function(_UpdateWorkoutEndDate value)? updateWorkoutEndDate,
    required TResult orElse(),
  }) {
    if (updateWorkoutEndDate != null) {
      return updateWorkoutEndDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateWorkoutEndDate implements WorkoutEvent {
  const factory _UpdateWorkoutEndDate({required final int createdAt}) =
      _$_UpdateWorkoutEndDate;

  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateWorkoutEndDateCopyWith<_$_UpdateWorkoutEndDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res, WorkoutState>;
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res, $Val extends WorkoutState>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WorkoutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkoutState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WorkoutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WorkoutState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessWorkoutNotStartedCopyWith<$Res> {
  factory _$$_SuccessWorkoutNotStartedCopyWith(
          _$_SuccessWorkoutNotStarted value,
          $Res Function(_$_SuccessWorkoutNotStarted) then) =
      __$$_SuccessWorkoutNotStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Exersize exersize});

  $ExersizeCopyWith<$Res> get exersize;
}

/// @nodoc
class __$$_SuccessWorkoutNotStartedCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_SuccessWorkoutNotStarted>
    implements _$$_SuccessWorkoutNotStartedCopyWith<$Res> {
  __$$_SuccessWorkoutNotStartedCopyWithImpl(_$_SuccessWorkoutNotStarted _value,
      $Res Function(_$_SuccessWorkoutNotStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exersize = null,
  }) {
    return _then(_$_SuccessWorkoutNotStarted(
      exersize: null == exersize
          ? _value.exersize
          : exersize // ignore: cast_nullable_to_non_nullable
              as Exersize,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExersizeCopyWith<$Res> get exersize {
    return $ExersizeCopyWith<$Res>(_value.exersize, (value) {
      return _then(_value.copyWith(exersize: value));
    });
  }
}

/// @nodoc

class _$_SuccessWorkoutNotStarted implements _SuccessWorkoutNotStarted {
  const _$_SuccessWorkoutNotStarted({required this.exersize});

  @override
  final Exersize exersize;

  @override
  String toString() {
    return 'WorkoutState.successWorkoutNotStarted(exersize: $exersize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessWorkoutNotStarted &&
            (identical(other.exersize, exersize) ||
                other.exersize == exersize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exersize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessWorkoutNotStartedCopyWith<_$_SuccessWorkoutNotStarted>
      get copyWith => __$$_SuccessWorkoutNotStartedCopyWithImpl<
          _$_SuccessWorkoutNotStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return successWorkoutNotStarted(exersize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return successWorkoutNotStarted?.call(exersize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutNotStarted != null) {
      return successWorkoutNotStarted(exersize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return successWorkoutNotStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return successWorkoutNotStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutNotStarted != null) {
      return successWorkoutNotStarted(this);
    }
    return orElse();
  }
}

abstract class _SuccessWorkoutNotStarted implements WorkoutState {
  const factory _SuccessWorkoutNotStarted({required final Exersize exersize}) =
      _$_SuccessWorkoutNotStarted;

  Exersize get exersize;
  @JsonKey(ignore: true)
  _$$_SuccessWorkoutNotStartedCopyWith<_$_SuccessWorkoutNotStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessWorkoutStartedCopyWith<$Res> {
  factory _$$_SuccessWorkoutStartedCopyWith(_$_SuccessWorkoutStarted value,
          $Res Function(_$_SuccessWorkoutStarted) then) =
      __$$_SuccessWorkoutStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Exersize exersize});

  $ExersizeCopyWith<$Res> get exersize;
}

/// @nodoc
class __$$_SuccessWorkoutStartedCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_SuccessWorkoutStarted>
    implements _$$_SuccessWorkoutStartedCopyWith<$Res> {
  __$$_SuccessWorkoutStartedCopyWithImpl(_$_SuccessWorkoutStarted _value,
      $Res Function(_$_SuccessWorkoutStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exersize = null,
  }) {
    return _then(_$_SuccessWorkoutStarted(
      exersize: null == exersize
          ? _value.exersize
          : exersize // ignore: cast_nullable_to_non_nullable
              as Exersize,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExersizeCopyWith<$Res> get exersize {
    return $ExersizeCopyWith<$Res>(_value.exersize, (value) {
      return _then(_value.copyWith(exersize: value));
    });
  }
}

/// @nodoc

class _$_SuccessWorkoutStarted implements _SuccessWorkoutStarted {
  const _$_SuccessWorkoutStarted({required this.exersize});

  @override
  final Exersize exersize;

  @override
  String toString() {
    return 'WorkoutState.successWorkoutStarted(exersize: $exersize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessWorkoutStarted &&
            (identical(other.exersize, exersize) ||
                other.exersize == exersize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exersize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessWorkoutStartedCopyWith<_$_SuccessWorkoutStarted> get copyWith =>
      __$$_SuccessWorkoutStartedCopyWithImpl<_$_SuccessWorkoutStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return successWorkoutStarted(exersize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return successWorkoutStarted?.call(exersize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutStarted != null) {
      return successWorkoutStarted(exersize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return successWorkoutStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return successWorkoutStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutStarted != null) {
      return successWorkoutStarted(this);
    }
    return orElse();
  }
}

abstract class _SuccessWorkoutStarted implements WorkoutState {
  const factory _SuccessWorkoutStarted({required final Exersize exersize}) =
      _$_SuccessWorkoutStarted;

  Exersize get exersize;
  @JsonKey(ignore: true)
  _$$_SuccessWorkoutStartedCopyWith<_$_SuccessWorkoutStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessWorkoutEndedCopyWith<$Res> {
  factory _$$_SuccessWorkoutEndedCopyWith(_$_SuccessWorkoutEnded value,
          $Res Function(_$_SuccessWorkoutEnded) then) =
      __$$_SuccessWorkoutEndedCopyWithImpl<$Res>;
  @useResult
  $Res call({Exersize exersize, bool isLastExersize});

  $ExersizeCopyWith<$Res> get exersize;
}

/// @nodoc
class __$$_SuccessWorkoutEndedCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_SuccessWorkoutEnded>
    implements _$$_SuccessWorkoutEndedCopyWith<$Res> {
  __$$_SuccessWorkoutEndedCopyWithImpl(_$_SuccessWorkoutEnded _value,
      $Res Function(_$_SuccessWorkoutEnded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exersize = null,
    Object? isLastExersize = null,
  }) {
    return _then(_$_SuccessWorkoutEnded(
      exersize: null == exersize
          ? _value.exersize
          : exersize // ignore: cast_nullable_to_non_nullable
              as Exersize,
      isLastExersize: null == isLastExersize
          ? _value.isLastExersize
          : isLastExersize // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExersizeCopyWith<$Res> get exersize {
    return $ExersizeCopyWith<$Res>(_value.exersize, (value) {
      return _then(_value.copyWith(exersize: value));
    });
  }
}

/// @nodoc

class _$_SuccessWorkoutEnded implements _SuccessWorkoutEnded {
  const _$_SuccessWorkoutEnded(
      {required this.exersize, required this.isLastExersize});

  @override
  final Exersize exersize;
  @override
  final bool isLastExersize;

  @override
  String toString() {
    return 'WorkoutState.successWorkoutEnded(exersize: $exersize, isLastExersize: $isLastExersize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessWorkoutEnded &&
            (identical(other.exersize, exersize) ||
                other.exersize == exersize) &&
            (identical(other.isLastExersize, isLastExersize) ||
                other.isLastExersize == isLastExersize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exersize, isLastExersize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessWorkoutEndedCopyWith<_$_SuccessWorkoutEnded> get copyWith =>
      __$$_SuccessWorkoutEndedCopyWithImpl<_$_SuccessWorkoutEnded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return successWorkoutEnded(exersize, isLastExersize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return successWorkoutEnded?.call(exersize, isLastExersize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutEnded != null) {
      return successWorkoutEnded(exersize, isLastExersize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return successWorkoutEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return successWorkoutEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successWorkoutEnded != null) {
      return successWorkoutEnded(this);
    }
    return orElse();
  }
}

abstract class _SuccessWorkoutEnded implements WorkoutState {
  const factory _SuccessWorkoutEnded(
      {required final Exersize exersize,
      required final bool isLastExersize}) = _$_SuccessWorkoutEnded;

  Exersize get exersize;
  bool get isLastExersize;
  @JsonKey(ignore: true)
  _$$_SuccessWorkoutEndedCopyWith<_$_SuccessWorkoutEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'WorkoutState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exersize exersize) successWorkoutNotStarted,
    required TResult Function(Exersize exersize) successWorkoutStarted,
    required TResult Function(Exersize exersize, bool isLastExersize)
        successWorkoutEnded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exersize exersize)? successWorkoutNotStarted,
    TResult? Function(Exersize exersize)? successWorkoutStarted,
    TResult? Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exersize exersize)? successWorkoutNotStarted,
    TResult Function(Exersize exersize)? successWorkoutStarted,
    TResult Function(Exersize exersize, bool isLastExersize)?
        successWorkoutEnded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessWorkoutNotStarted value)
        successWorkoutNotStarted,
    required TResult Function(_SuccessWorkoutStarted value)
        successWorkoutStarted,
    required TResult Function(_SuccessWorkoutEnded value) successWorkoutEnded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessWorkoutNotStarted value)?
        successWorkoutNotStarted,
    TResult? Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult? Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessWorkoutNotStarted value)? successWorkoutNotStarted,
    TResult Function(_SuccessWorkoutStarted value)? successWorkoutStarted,
    TResult Function(_SuccessWorkoutEnded value)? successWorkoutEnded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WorkoutState {
  const factory _Failure() = _$_Failure;
}
