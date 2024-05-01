import 'package:appointment/core/services/storage_service.dart';
import 'package:appointment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          mode: getIt
                      .get<StorageService>()
                      .valueGetter(key: StorageKeys.isDark) ==
                  false
              ? ThemeMode.light
              : ThemeMode.dark,
        )) {
    on<_Started>((event, emit) {
      final service = getIt.get<StorageService>();
      bool? isDark = service.valueGetter(key: StorageKeys.isDark);

      if (isDark == null) {
        var brightness =
            SchedulerBinding.instance.platformDispatcher.platformBrightness;
        bool isDarkTheme = brightness == Brightness.dark;
        service.valueSetter(key: StorageKeys.isDark, value: isDarkTheme);

        emit(
          ThemeState(
            mode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          ),
        );
      } else {
        emit(
          ThemeState(
            mode: isDark ? ThemeMode.dark : ThemeMode.light,
          ),
        );
      }
    });
    on<_ThemeToggled>((event, emit) {
      final service = getIt.get<StorageService>();
      bool isDark = service.valueGetter(key: StorageKeys.isDark) ?? false;
      service.valueSetter(value: !isDark, key: StorageKeys.isDark);
      emit(
        ThemeState(mode: isDark ? ThemeMode.light : ThemeMode.dark),
      );
    });
  }
}
