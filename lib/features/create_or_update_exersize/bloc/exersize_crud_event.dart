part of 'exersize_crud_bloc.dart';

@freezed
class ExersizeCrudEvent with _$ExersizeCrudEvent {
  const factory ExersizeCrudEvent.load({
    required int createdAt,
  }) = _Load;
  const factory ExersizeCrudEvent.save({
    required Exersize exersize,
  }) = _Save;
  const factory ExersizeCrudEvent.delete({
    required int createdAt,
  }) = _Delete;
}
