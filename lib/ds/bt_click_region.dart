import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// This is a click region that can be used to detect clicks on the screen.
/// It is a transparent widget that covers the child.
class BTClickRegion extends HookConsumerWidget {
  const BTClickRegion({
    super.key,
    required this.child,
    this.onPressed,
    this.hoverChanged,
    this.focusChanged,
    this.autofocus = false,
    this.captureEnter = true,
    this.allowFocus = true,
    this.focusNode,
  });

  /// When null, this widget will not respond to clicks and the pointer will be the default one.
  final VoidCallback? onPressed;

  final Widget child;
  final ValueChanged<bool>? hoverChanged;
  final ValueChanged<bool>? focusChanged;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool captureEnter;
  final bool allowFocus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enabled = onPressed != null;
    final content = MouseRegion(
      cursor: enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: enabled ? (_) => hoverChanged?.call(true) : null,
      onExit: enabled ? (_) => hoverChanged?.call(false) : null,
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
    );

    if (!allowFocus) {
      return content;
    }

    return Focus(
      autofocus: autofocus,
      focusNode: focusNode,
      onKeyEvent: enabled && captureEnter
          ? (node, event) {
              if (event.logicalKey == LogicalKeyboardKey.enter) {
                onPressed?.call();
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            }
          : null,
      onFocusChange: enabled ? focusChanged : null,
      child: content,
    );
  }
}
