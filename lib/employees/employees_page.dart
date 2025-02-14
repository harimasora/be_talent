import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:be_talent/ds/text.dart';
import 'package:be_talent/employees/employees_notifier.dart';
import 'package:be_talent/employees/models/employee.dart';
import 'package:be_talent/employees/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    SliverToBoxAdapter(child: BTHeading1('Funcionários')),
                    SliverToBoxAdapter(child: SizedBox(height: Spacings.x4)),
                    SliverToBoxAdapter(child: Text('Search bar goes here')),
                    SliverToBoxAdapter(child: SizedBox(height: Spacings.x4)),
                    SliverToBoxAdapter(
                      child: Container(
                        decoration: BoxDecoration(
                          color: StaticColors.blue10,
                          border: Border.all(
                            color: StaticColors.gray10,
                          ),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(Spacings.x2),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Spacings.x3),
                          child: Row(
                            children: [
                              BTHeading2('Foto'),
                              SizedBox(width: Spacings.x6),
                              BTHeading2('Nome'),
                              Spacer(),
                              Container(
                                width: Spacings.x2,
                                height: Spacings.x2,
                                decoration: BoxDecoration(
                                  color: StaticColors.black,
                                  borderRadius: BorderRadius.circular(Spacings.x2),
                                ),
                              ),
                              SizedBox(width: Spacings.x4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverList.builder(
                      itemCount: employees.length,
                      itemBuilder: (context, index) => CollapsibleEmployeeListTile(employee: employees[index]),
                    )
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

class CollapsibleEmployeeListTile extends HookConsumerWidget {
  const CollapsibleEmployeeListTile({required this.employee, super.key});
  final Employee employee;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExpansionTile(
      showTrailingIcon: false,
      tilePadding: EdgeInsets.zero,
      childrenPadding: EdgeInsets.zero,
      minTileHeight: 0,
      shape: Border.all(width: 0),
      collapsedShape: Border.all(width: 0),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: Spacings.x4, vertical: Spacings.x3),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: Image.network(employee.image).image,
              radius: Spacings.x4,
            ),
            SizedBox(width: Spacings.x6),
            BTHeading3(employee.name),
            Spacer(),
            SvgPicture.asset(
              'assets/icons/chevron-down.svg',
              colorFilter: ColorFilter.mode(StaticColors.blue, BlendMode.srcATop),
              width: Spacings.x8,
            ),
          ],
        ),
      ),
      children: [
        Row(
          children: [
            BTHeading2('Data de admissão'),
            Spacer(),
            Text(employee.admissionDate.toString()),
          ],
        ),
        Row(
          children: [
            BTHeading2('Telefone'),
            Spacer(),
            Text(employee.phone.toString()),
          ],
        ),
      ],
    );
  }
}
