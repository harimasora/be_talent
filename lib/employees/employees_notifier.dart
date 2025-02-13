import 'package:be_talent/employees/employees_api.dart';
import 'package:be_talent/employees/employees_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employees_notifier.g.dart';

@riverpod
class EmployeesNotifier extends _$EmployeesNotifier {
  @override
  Future<EmployeesState> build() async {
    final response = await ref.watch(employeesProvider.future);
    return EmployeesState(employees: response);
  }
}
