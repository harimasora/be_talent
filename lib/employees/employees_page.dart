import 'package:be_talent/employees/employees_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(employeesNotifierProvider);
    return Scaffold(
      body: asyncState.when(
        data: (state) {
          final employees = state.employees;
          if (employees.isEmpty) return const Text('Is empty');
          return ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final employee = employees[index];
              return ListTile(
                title: Text(employee.toString()),
              );
            },
          );
        },
        error: (err, stack) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Error'),
            Text(err.toString()),
            Text(stack.toString()),
          ],
        ),
        loading: () => const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
