part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    @Default(BlocState.loading) BlocState blocState,
    @Default([]) List<AppointmentModel> appointments,
    AppointmentModel? appointment,
    @Default('') String keyword,
    DateTime? currentDate,
    Failure? error,
  }) = _AppointmentState;
}
