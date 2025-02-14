import 'package:be_talent/employees/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeeListView extends HookConsumerWidget {
  const EmployeeListView({required this.employees, super.key});

  final List<Employee> employees;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
  }
}
