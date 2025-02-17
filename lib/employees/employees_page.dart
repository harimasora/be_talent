import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/text.dart';
import 'package:be_talent/ds/vertical_space.dart';
import 'package:be_talent/employees/widgets/employee_list_view.dart';
import 'package:be_talent/employees/widgets/search_bar.dart';
import 'package:be_talent/employees/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeesPage extends HookConsumerWidget {
  const EmployeesPage({super.key});

  // TODO: SizedBox to HorizontalSpace and VerticalSpace
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          BeTalentSliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Spacings.x5, vertical: Spacings.x5),
            sliver: SliverMainAxisGroup(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BTHeading1('Funcionários'),
                      VerticalSpace(Spacings.x4),
                      EmployeeSearchBar(),
                      VerticalSpace(Spacings.x4),
                    ],
                  ),
                ),
                EmployeeListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
