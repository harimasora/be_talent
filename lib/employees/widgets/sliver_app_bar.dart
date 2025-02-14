import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:be_talent/employees/widgets/notification_button.dart';
import 'package:be_talent/employees/widgets/profile_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BeTalentSliverAppBar extends HookConsumerWidget {
  const BeTalentSliverAppBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPersistentHeader(
      delegate: _BeTalentAppBarDelegate(padding: MediaQuery.of(context).padding),
      pinned: true,
    );
  }
}

class _BeTalentAppBarDelegate extends SliverPersistentHeaderDelegate {
  const _BeTalentAppBarDelegate({this.padding});

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ColoredBox(
      color: StaticColors.white.withAlpha(242),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Spacings.x3, horizontal: Spacings.x5),
        child: Column(
          children: [
            SizedBox(
              height: padding?.top,
            ),
            Row(
              children: [
                ProfileButton(),
                Spacer(),
                NotificationButton(
                  text: '02',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 69 + (padding?.top ?? 0);

  @override
  double get minExtent => 69 + (padding?.top ?? 0);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
