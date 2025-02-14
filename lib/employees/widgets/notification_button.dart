import 'package:be_talent/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationButton extends HookConsumerWidget {
  const NotificationButton({this.text, super.key});
  final String? text;

  // TODO: Make SVG clickable
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset('assets/icons/bell-notification.svg'),
        if (text != null)
          Positioned(
            top: -5,
            right: -5,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: StaticColors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  text!,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
