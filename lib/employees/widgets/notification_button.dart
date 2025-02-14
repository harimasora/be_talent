import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:be_talent/ds/text.dart';
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
            top: -Spacings.x1,
            right: -Spacings.x1,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: Spacings.x5,
                  height: Spacings.x5,
                  decoration: BoxDecoration(
                    color: StaticColors.blue,
                    borderRadius: BorderRadius.circular(Spacings.x4),
                  ),
                ),
                BTFootnote(
                  text!,
                  style: TextStyle(color: StaticColors.white),
                ),
              ],
            ),
          )
      ],
    );
  }
}
