import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class _UseFocusNodeOrDefaultHook extends Hook<FocusNode> {
  const _UseFocusNodeOrDefaultHook(this.focusNode);

  final FocusNode? focusNode;

  @override
  _UseFocusNodeOrDefaultHookState createState() => _UseFocusNodeOrDefaultHookState();
}

class _UseFocusNodeOrDefaultHookState extends HookState<FocusNode, _UseFocusNodeOrDefaultHook> {
  FocusNode? _focusNode;

  @override
  FocusNode build(BuildContext context) {
    if (hook.focusNode case final focusNode?) {
      _disposeFocusNode();
      return focusNode;
    }
    return _focusNode ?? (_focusNode = FocusNode());
  }

  void _disposeFocusNode() {
    _focusNode?.dispose();
    _focusNode = null;
  }

  @override
  void dispose() {
    _disposeFocusNode();
    super.dispose();
  }
}

FocusNode useFocusNodeOrDefault(FocusNode? focusNode) {
  return use(_UseFocusNodeOrDefaultHook(focusNode));
}
