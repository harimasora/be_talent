// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      job: json['job'] as String,
      admissionDate: DateTime.parse(json['admission_date'] as String),
      phone: json['phone'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
      'admission_date': instance.admissionDate.toIso8601String(),
      'phone': instance.phone,
      'image': instance.image,
    };
