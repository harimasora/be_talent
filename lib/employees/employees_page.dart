import 'package:be_talent/employees/employees_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employees = ref.watch(employeesProvider);
    return Scaffold(
      body: employees.when(
        data: (employees) {
          if (employees == null || employees.isEmpty) return const Text('Is empty');
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
          ],
        ),
        loading: () => const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
