import 'package:be_talent/employees/models/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'employees_state.freezed.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState({
    @Default(AsyncValue<List<Employee>>.loading()) AsyncValue<List<Employee>> employees,
    @Default('') String filterSubject,
  }) = _EmployeesState;

  const EmployeesState._();

  AsyncValue<List<Employee>> get filteredEmployees {
    if (filterSubject.isEmpty) return employees;

    return employees.whenData((list) {
      return list.where((employee) {
        return employee.name.toLowerCase().contains(filterSubject.toLowerCase()) ||
            employee.job.toLowerCase().contains(filterSubject.toLowerCase()) ||
            employee.formattedAdmissionDate.contains(filterSubject) ||
            employee.phone.contains(filterSubject);
      }).toList();
    });
  }
}
