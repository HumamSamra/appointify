import 'package:appointment/core/enums/bloc_state.dart';
import 'package:appointment/core/error/failure.dart';
import 'package:appointment/data/model/appointment_model.dart';
import 'package:appointment/data/repository/base_appointment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'appointment_bloc.freezed.dart';
part 'appointment_event.dart';
part 'appointment_state.dart';

@injectable
class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final BaseAppointmentRepository repo;
  AppointmentBloc({
    required this.repo,
  }) : super(const AppointmentState(
          blocState: BlocState.loading,
        )) {
    on<_Started>((event, emit) {});

    on<_GetAll>(
      (event, emit) async {
        final response = await repo.getAppointments(event.keyword);
        emit(AppointmentState(
          appointments: response,
          keyword: event.keyword ?? '',
          currentDate: DateTime.now(),
          blocState: BlocState.loaded,
        ));
      },
    );

    on<_Get>(
      (event, emit) async {
        final response = await repo.getAppointment(event.id);
        response.fold(
          (l) => emit(AppointmentState(
            blocState: BlocState.error,
            appointments: state.appointments,
            error: l,
          )),
          (r) => emit(AppointmentState(
            blocState: BlocState.loaded,
            appointments: state.appointments,
            appointment: r,
          )),
        );
      },
    );

    on<_Create>(
      (event, emit) async {
        final response = await repo.createAppointment(event.item);
        final getResult = await repo.getAppointments();
        response.fold(
          (l) => emit(
            AppointmentState(
              error: l,
              blocState: BlocState.error,
            ),
          ),
          (r) => emit(
            AppointmentState(
              appointments: getResult,
              blocState: BlocState.loaded,
            ),
          ),
        );
      },
    );

    on<_Edit>(
      (event, emit) async {
        final response = await repo.editAppointment(event.item);
        final getResult = await repo.getAppointments();

        response.fold(
          (l) => emit(
            AppointmentState(
              error: l,
              blocState: BlocState.error,
            ),
          ),
          (r) => emit(
            AppointmentState(
              appointments: getResult,
              blocState: BlocState.loaded,
            ),
          ),
        );
      },
    );

    on<_Delete>(
      (event, emit) async {
        final response = await repo.deleteAppointment(event.id);
        final getResult = await repo.getAppointments();

        response.fold(
          (l) => emit(
            AppointmentState(
              error: l,
              blocState: BlocState.error,
            ),
          ),
          (r) => emit(
            AppointmentState(
              appointments: getResult,
              blocState: BlocState.loaded,
            ),
          ),
        );
      },
    );
  }
}
