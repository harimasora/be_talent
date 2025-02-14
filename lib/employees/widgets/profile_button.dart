import 'package:be_talent/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileButton extends HookConsumerWidget {
  const ProfileButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      backgroundColor: StaticColors.gray5,
      radius: 22.5,
      child: Text('CG'),
    );
  }
}
