import 'package:appointment/core/error/failure.dart';
import 'package:appointment/core/notifications/notifications_services.dart';
import 'package:appointment/core/services/storage_service.dart';
import 'package:appointment/core/utils/utils.dart';
import 'package:appointment/data/model/appointment_model.dart';
import 'package:appointment/data/repository/base_appointment_repository.dart';
import 'package:appointment/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseAppointmentRepository)
class AppointmentRepository implements BaseAppointmentRepository {
  @override
  Future<Either<Failure, bool>> createAppointment(AppointmentModel item) async {
    try {
      final storageService = getIt.get<StorageService>();
      item = item.copyWith(notificationId: Utils.getUniqueId());
      await GlobalNotification.instance.scheduleNotification(
        item.notificationId!,
        item.date,
        title: item.name,
        message: "It's Time for your Appointment!",
      );
      await storageService.addAppointment(item);
      return const Right(true);
    } catch (err) {
      return Left(Failure(message: 'Error: $err'));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteAppointment(String id) async {
    try {
      final storageService = getIt.get<StorageService>();
      final result = await storageService.getAppointment(id);
      await GlobalNotification.instance
          .cancelScheduledNotification(result.notificationId!);
      await storageService.deleteAppointment(id);
      return const Right(true);
    } catch (err) {
      return Left(Failure(message: 'Error: $err'));
    }
  }

  @override
  Future<Either<Failure, bool>> editAppointment(AppointmentModel item) async {
    try {
      final storageService = getIt.get<StorageService>();
      await GlobalNotification.instance
          .cancelScheduledNotification(item.notificationId!);
      item = item.copyWith(notificationId: Utils.getUniqueId());
      await GlobalNotification.instance.scheduleNotification(
        item.notificationId!,
        item.date,
        title: item.name,
        message: "It's Time for your Appointment!",
      );
      await storageService.updateAppointment(item);
      return const Right(true);
    } catch (err) {
      return Left(Failure(message: 'Error: $err'));
    }
  }

  @override
  Future<List<AppointmentModel>> getAppointments([String? keyword]) async {
    try {
      final storageService = getIt.get<StorageService>();
      final result = await storageService.getAppointments();

      if (keyword != null && keyword.isNotEmpty) {
        var r = result
            .where((e) =>
                e.name.toLowerCase().contains(keyword.toLowerCase().trim()))
            .toList();
        return r;
      } else {
        return result;
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, AppointmentModel>> getAppointment(String id) async {
    try {
      final storageService = getIt.get<StorageService>();
      final result = await storageService.getAppointment(id);
      return Right(result);
    } catch (err) {
      return Left(Failure(message: 'Error: $err'));
    }
  }
}
