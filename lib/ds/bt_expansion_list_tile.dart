import 'package:be_talent/ds/bt_actionable_item.dart';
import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _animationDuration = Duration(milliseconds: 200);

class BTExpansionListTileContainer extends HookConsumerWidget {
  const BTExpansionListTileContainer({
    super.key,
    required this.header,
    required this.child,
    required this.isExpanded,
  });

  final Widget header;
  final Widget? child;
  final bool isExpanded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const borderSide = BorderSide(
      color: StaticColors.gray10,
      width: 1,
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          left: borderSide,
          right: borderSide,
          bottom: borderSide,
        ),
      ),
      child: Column(
        children: [
          header,
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: SizedBox(
              width: double.infinity,
              child: child,
            ),
            crossFadeState: isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: _animationDuration,
          ),
        ],
      ),
    );
  }
}

class BTExpansionListTileHeader extends HookConsumerWidget {
  const BTExpansionListTileHeader({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isExpanded,
    this.trailing,
  });

  final Widget title;
  final VoidCallback onPressed;
  final bool isExpanded;
  final Widget? trailing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BTActionableItem(
      onPressed: onPressed,
      child: AnimatedContainer(
        duration: _animationDuration,
        decoration: BoxDecoration(),
        child: Row(
          children: [
            Expanded(
              child: title,
            ),
            const SizedBox(width: Spacings.x4),
            if (trailing != null) ...[
              AnimatedRotation(
                duration: _animationDuration,
                turns: isExpanded ? 0.5 : 0,
                child: trailing,
              ),
              SizedBox(width: Spacings.x4),
            ],
          ],
        ),
      ),
    );
  }
}
