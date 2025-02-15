import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BTActionableItem extends HookConsumerWidget {
  const BTActionableItem({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.autofocus = false,
    this.focusNode,
    this.onHover,
    this.onFocusChange,
    this.forceBrightness,
    this.analyticsExtraProperties,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Map<String, dynamic>? analyticsExtraProperties;
  final BorderRadius? borderRadius;
  final bool autofocus;
  final FocusNode? focusNode;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final Brightness? forceBrightness;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      type: MaterialType.transparency,
      child: SelectionContainer.disabled(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            InkWell(
              onTap: onPressed,
              borderRadius: borderRadius,
              focusNode: focusNode,
              autofocus: autofocus,
              onHover: onHover,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
