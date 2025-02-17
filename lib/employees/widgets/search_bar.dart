import 'package:be_talent/common/use_focus_node_or_default.dart';
import 'package:be_talent/common/use_map_focus_to_value.dart';
import 'package:be_talent/ds/bt_click_region.dart';
import 'package:be_talent/ds/spacings.dart';
import 'package:be_talent/ds/static_colors.dart';
import 'package:be_talent/ds/text.dart';
import 'package:be_talent/employees/employees_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmployeeSearchBar extends HookConsumerWidget {
  const EmployeeSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(employeesNotifierProvider.notifier);
    final textController = useTextEditingController();
    final containerFocusNode = useFocusNodeOrDefault(null);
    final borderColor = useMapFocusToValue(
      containerFocusNode,
      focused: () => StaticColors.black,
      unfocused: () => StaticColors.gray10,
    );
    final showClearButtonState = useState(false);

    useEffect(
      () {
        void textChangedListener() {
          showClearButtonState.value = textController.text.isNotEmpty;
        }

        textController.addListener(textChangedListener);

        return () {
          textController.removeListener(textChangedListener);
        };
      },
      [textController],
    );

    return BTClickRegion(
      captureEnter: false,
      allowFocus: false,
      onPressed: () {
        containerFocusNode.requestFocus();
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: StaticColors.white,
          borderRadius: BorderRadius.circular(Spacings.x20),
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacings.x3),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
                colorFilter: ColorFilter.mode(StaticColors.black, BlendMode.srcATop),
              ),
              SizedBox(width: Spacings.x1),
              Expanded(
                child: TextField(
                  focusNode: containerFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Pesquisar',
                    border: InputBorder.none,
                  ),
                  style: styles[BTTypography.h3],
                  controller: textController,
                  onChanged: notifier.changeFilterSubject,
                  onTapOutside: (_) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
              ),
              if (showClearButtonState.value)
                _ClearButton(
                  onPressed: () {
                    textController.clear();
                    notifier.changeFilterSubject(textController.text);
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _ClearButton extends HookConsumerWidget {
  const _ClearButton({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hoverState = useState(false);

    return ExcludeFocus(
      child: BTClickRegion(
        onPressed: onPressed,
        hoverChanged: (hover) => hoverState.value = hover,
        child: Container(
          color: Colors.transparent,
          height: Spacings.x8,
          width: Spacings.x8,
          child: Center(
            child: Container(
              width: Spacings.x4,
              height: Spacings.x4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Spacings.x2),
                color: hoverState.value ? StaticColors.gray20 : StaticColors.gray10,
              ),
              child: const Center(
                child: Icon(
                  Icons.close,
                  size: Spacings.x3,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
