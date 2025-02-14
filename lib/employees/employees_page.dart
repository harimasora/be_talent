import 'package:be_talent/employees/employees_notifier.dart';
import 'package:be_talent/employees/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(employeesNotifierProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          BeTalentSliverAppBar(),
          asyncState.when(
            data: (state) {
              final employees = state.employees;
              return SliverList.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(employees[index].toString()),
                  );
                },
              );
            },
            error: (err, stack) => SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Error'),
                  Text(err.toString()),
                  Text(stack.toString()),
                ],
              ),
            ),
            loading: () => SliverToBoxAdapter(child: const CircularProgressIndicator.adaptive()),
          ),
        ],
      ),
    );
  }
}
