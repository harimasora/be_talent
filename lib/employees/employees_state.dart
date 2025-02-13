import 'package:be_talent/employees/models/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_state.freezed.dart';
part 'employees_state.g.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState({
    required List<Employee> employees,
  }) = _EmployeesState;

  factory EmployeesState.fromJson(Map<String, dynamic> json) => _$EmployeesStateFromJson(json);
}
