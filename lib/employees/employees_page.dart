import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/text.dart';
import 'package:be_talent/employees/employees_notifier.dart';
import 'package:be_talent/employees/widgets/employee_list_view.dart';
import 'package:be_talent/employees/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});

  // TODO: Create skeleton
  // TODO: Create error/retry
  // TODO: Animate title to header
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(employeesNotifierProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          BeTalentSliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Spacings.x5, vertical: Spacings.x5),
            sliver: asyncState.when(
              data: (state) {
                final employees = state.employees;
                return SliverMainAxisGroup(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BTHeading1('Funcionários'),
                          SizedBox(height: Spacings.x4),
                          Text('Search bar goes here'),
                          SizedBox(height: Spacings.x4),
                        ],
                      ),
                    ),
                    EmployeeListView(employees: employees),
                  ],
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
          ),
        ],
      ),
    );
  }
}
