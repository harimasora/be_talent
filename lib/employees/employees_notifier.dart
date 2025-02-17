import 'package:be_talent/employees/employees_api.dart';
import 'package:be_talent/employees/employees_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employees_notifier.g.dart';

@riverpod
class EmployeesNotifier extends _$EmployeesNotifier {
  @override
  EmployeesState build() {
    final response = ref.watch(employeesProvider);
    return EmployeesState(employees: response);
  }

  void changeFilterSubject(String value) {
    state = state.copyWith(filterSubject: value);
  }
}
