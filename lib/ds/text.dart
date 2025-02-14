import 'package:be_talent/ds/static_colors.dart';
import 'package:flutter/material.dart';

enum BTTypography { h1, h2, h3, footnote }

const styles = {
  BTTypography.h1: TextStyle(
    fontFamily: 'Helvetica',
    color: StaticColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  BTTypography.h2: TextStyle(
    fontFamily: 'Helvetica',
    color: StaticColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  BTTypography.h3: TextStyle(
    fontFamily: 'Helvetica',
    color: StaticColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  BTTypography.footnote: TextStyle(
    fontFamily: 'Helvetica',
    color: StaticColors.black,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  ),
};

class BTHeading3 extends StatelessWidget {
  const BTHeading3(this.text, {this.style, super.key});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Text(text, style: styles[BTTypography.h3]?.merge(style));
}

class BTHeading2 extends StatelessWidget {
  const BTHeading2(this.text, {this.style, super.key});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Text(text, style: styles[BTTypography.h2]?.merge(style));
}

class BTHeading1 extends StatelessWidget {
  const BTHeading1(this.text, {this.style, super.key});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Text(text, style: styles[BTTypography.h1]?.merge(style));
}

class BTFootnote extends StatelessWidget {
  const BTFootnote(this.text, {this.style, super.key});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Text(text, style: styles[BTTypography.footnote]?.merge(style));
}
