import 'package:be_talent/ds/bt_expansion_list_tile.dart';
import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:be_talent/ds/text.dart';
import 'package:be_talent/employees/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeeListView extends HookConsumerWidget {
  const EmployeeListView({required this.employees, super.key});

  final List<Employee> employees;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverMainAxisGroup(
      slivers: [
        _Header(),
        SliverList.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) => EmployeeExpansionListTile(employee: employees[index]),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class EmployeeExpansionListTile extends HookConsumerWidget {
  const EmployeeExpansionListTile({required this.employee, super.key});
  final Employee employee;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpandedState = useState(false);
    return BTExpansionListTileContainer(
      isExpanded: isExpandedState.value,
      header: BTExpansionListTileHeader(
        isExpanded: isExpandedState.value,
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
            ],
          ),
        ),
        trailing: SvgPicture.asset(
          'assets/icons/chevron-down.svg',
          colorFilter: ColorFilter.mode(StaticColors.blue, BlendMode.srcATop),
          width: Spacings.x8,
        ),
        onPressed: () {
          isExpandedState.value = !isExpandedState.value;
        },
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacings.x4, vertical: Spacings.x4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                BTHeading2('Cargo'),
                Spacer(),
                BTHeading3(employee.job),
              ],
            ),
            CustomPaint(painter: _DashedLine()),
            SizedBox(height: Spacings.x4),
            Row(
              children: [
                BTHeading2('Data de admissão'),
                Spacer(),
                BTHeading3(employee.formattedAdmissionDate),
              ],
            ),
            CustomPaint(painter: _DashedLine()),
            SizedBox(height: Spacings.x4),
            Row(
              children: [
                BTHeading2('Telefone'),
                Spacer(),
                BTHeading3(employee.formattedPhone),
              ],
            ),
            CustomPaint(painter: _DashedLine()),
            SizedBox(height: Spacings.x4),
          ],
        ),
      ),
    );
  }
}

class _DashedLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double positionX = 0;
    const lineLength = 2;
    const lineGap = 2;
    final paint = Paint()
      ..color = StaticColors.gray10
      ..strokeWidth = 1;
    while (positionX < size.width) {
      canvas.drawLine(Offset(positionX, 0), Offset(positionX + lineLength, 0), paint);
      positionX += lineLength + lineGap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
