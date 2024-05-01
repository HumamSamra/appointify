import 'package:appointment/core/error/failure.dart';
import 'package:appointment/data/model/appointment_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseAppointmentRepository {
  Future<List<AppointmentModel>> getAppointments([String? keyword]);
  Future<Either<Failure, AppointmentModel>> getAppointment(String id);
  Future<Either<Failure, bool>> createAppointment(AppointmentModel item);
  Future<Either<Failure, bool>> editAppointment(AppointmentModel item);
  Future<Either<Failure, bool>> deleteAppointment(String id);
}
