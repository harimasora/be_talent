import 'package:flutter/widgets.dart';

import 'use_listen_to_focus_change.dart';

T useMapFocusToValue<T>(
  FocusNode node, {
  required T Function() focused,
  required T Function() unfocused,
}) {
  final hasFocus = useListenToFocusChange(node);
  return hasFocus ? focused() : unfocused();
}
