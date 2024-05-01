import 'package:appointment/presentation/screens/appointments/appointments.imports.dart';
import 'package:appointment/presentation/screens/create/create_appointment.imports.dart';
import 'package:appointment/presentation/screens/edit/edit_appointment.imports.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/appointments',
          page: AppointmentsRoute.page,
        ),
        AutoRoute(
          path: '/create',
          page: CreateAppointmentRoute.page,
        ),
        AutoRoute(
          path: '/edit/:id',
          page: EditAppointmentRoute.page,
        ),
      ];
}
