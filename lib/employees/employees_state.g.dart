// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeesStateImpl _$$EmployeesStateImplFromJson(Map<String, dynamic> json) =>
    _$EmployeesStateImpl(
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmployeesStateImplToJson(
        _$EmployeesStateImpl instance) =>
    <String, dynamic>{
      'employees': instance.employees,
    };
