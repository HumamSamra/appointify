part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.started() = _Started;
  const factory AppointmentEvent.getAll([String? keyword]) = _GetAll;
  const factory AppointmentEvent.get(String id) = _Get;
  const factory AppointmentEvent.create(AppointmentModel item) = _Create;
  const factory AppointmentEvent.edit(AppointmentModel item) = _Edit;
  const factory AppointmentEvent.delete(String id) = _Delete;
}
