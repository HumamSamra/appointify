// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentModelImpl _$$AppointmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentModelImpl(
      id: json['id'] as String,
      notificationId: json['notificationId'] as int?,
      name: json['name'] as String,
      description: json['description'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$AppointmentModelImplToJson(
        _$AppointmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notificationId': instance.notificationId,
      'name': instance.name,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
    };
