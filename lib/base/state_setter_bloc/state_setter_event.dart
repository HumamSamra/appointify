part of 'state_setter_bloc.dart';

@freezed
class StateSetterEvent with _$StateSetterEvent {
  const factory StateSetterEvent.started({dynamic value}) = _Started;
  const factory StateSetterEvent.setState({dynamic newValue}) = _SetState;
}
