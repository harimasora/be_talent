import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

final dio = Dio(
  BaseOptions(baseUrl: 'http://localhost:3000/'),
);

final employeesProvider = FutureProvider.autoDispose((ref) async {
  final response = await dio.get<List<dynamic>>('employees');
  final data = response.data;
  return data;
});

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmployeesPage(),
    );
  }
}

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
