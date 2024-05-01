import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'state_setter_bloc.freezed.dart';
part 'state_setter_event.dart';
part 'state_setter_state.dart';

@injectable
class StateSetterBloc extends Bloc<StateSetterEvent, StateSetterState> {
  StateSetterBloc() : super(const StateSetterState()) {
    on<_Started>((event, emit) {
      emit(StateSetterState(value: event.value));
    });

    on<_SetState>((event, emit) {
      emit(
        StateSetterState(value: event.newValue),
      );
    });
  }
}
