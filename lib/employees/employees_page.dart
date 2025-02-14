import 'package:be_talent/common/colors.dart';
import 'package:be_talent/employees/employees_notifier.dart';
import 'package:be_talent/employees/widgets/employee_list_view.dart';
import 'package:be_talent/employees/widgets/notification_button.dart';
import 'package:be_talent/employees/widgets/profile_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(employeesNotifierProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BeTalentAppBar(),
      body: asyncState.when(
        data: (state) => EmployeeListView(employees: state.employees),
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

class BeTalentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BeTalentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white.withAlpha(242),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Row(
            children: [
              ProfileButton(),
              Spacer(),
              NotificationButton(
                text: '02',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(68);
}
