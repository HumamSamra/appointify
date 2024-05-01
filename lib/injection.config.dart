// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'base/appointments_bloc/appointment_bloc.dart' as _i7;
import 'base/state_setter_bloc/state_setter_bloc.dart' as _i3;
import 'base/theme_bloc/theme_bloc.dart' as _i4;
import 'data/repository/appointment_repository.dart' as _i6;
import 'data/repository/base_appointment_repository.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.StateSetterBloc>(() => _i3.StateSetterBloc());
    gh.factory<_i4.ThemeBloc>(() => _i4.ThemeBloc());
    gh.factory<_i5.BaseAppointmentRepository>(
        () => _i6.AppointmentRepository());
    gh.factory<_i7.AppointmentBloc>(
        () => _i7.AppointmentBloc(repo: gh<_i5.BaseAppointmentRepository>()));
    return this;
  }
}
