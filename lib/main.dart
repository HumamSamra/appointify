import 'package:appointment/base/appointments_bloc/appointment_bloc.dart';
import 'package:appointment/base/state_setter_bloc/state_setter_bloc.dart';
import 'package:appointment/base/theme_bloc/theme_bloc.dart';
import 'package:appointment/core/notifications/notifications_services.dart';
import 'package:appointment/core/theme/app_theme.dart';
import 'package:appointment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timezone/data/latest.dart' as tz;

import './core/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GlobalNotification.instance.setUpNotification();
  tz.initializeTimeZones();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = AppRouter();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (context) => getIt.get<AppointmentBloc>()
                ..add(const AppointmentEvent.started()),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => getIt.get<StateSetterBloc>()
                ..add(const StateSetterEvent.started()),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => getIt.get<ThemeBloc>()
                ..add(
                  const ThemeEvent.started(),
                ),
            ),
          ],
          child: BlocConsumer<ThemeBloc, ThemeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp.router(
                title: 'Appointments Manager',
                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: state.mode,
                debugShowCheckedModeBanner: false,
                routerConfig: router.config(),
              );
            },
          ),
        );
      },
    );
  }
}
