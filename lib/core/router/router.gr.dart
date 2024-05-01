// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppointmentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppointmentsScreen(),
      );
    },
    CreateAppointmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateAppointmentScreen(),
      );
    },
    EditAppointmentRoute.name: (routeData) {
      final args = routeData.argsAs<EditAppointmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditAppointmentScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [AppointmentsScreen]
class AppointmentsRoute extends PageRouteInfo<void> {
  const AppointmentsRoute({List<PageRouteInfo>? children})
      : super(
          AppointmentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppointmentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateAppointmentScreen]
class CreateAppointmentRoute extends PageRouteInfo<void> {
  const CreateAppointmentRoute({List<PageRouteInfo>? children})
      : super(
          CreateAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAppointmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditAppointmentScreen]
class EditAppointmentRoute extends PageRouteInfo<EditAppointmentRouteArgs> {
  EditAppointmentRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          EditAppointmentRoute.name,
          args: EditAppointmentRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'EditAppointmentRoute';

  static const PageInfo<EditAppointmentRouteArgs> page =
      PageInfo<EditAppointmentRouteArgs>(name);
}

class EditAppointmentRouteArgs {
  const EditAppointmentRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'EditAppointmentRouteArgs{key: $key, id: $id}';
  }
}
