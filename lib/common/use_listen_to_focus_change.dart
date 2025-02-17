import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

bool useListenToFocusChange(FocusNode node) {
  final focused = useState(node.hasFocus);
  useEffect(
    () {
      node.addListener(() {
        focused.value = node.hasFocus;
      });
      return null;
    },
    [node],
  );

  return focused.value;
}
