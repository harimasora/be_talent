import 'package:flutter/widgets.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(
    this.space, {
    super.key,
  });

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}
