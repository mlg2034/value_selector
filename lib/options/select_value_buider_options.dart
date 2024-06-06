import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';

class SelectValueOption<T> {
  final SelectValueController<T> selectValueController;
  late Widget Function(BuildContext context, T value, T? selectedValue,
      void Function(T?)? onChange)? builder;
  final List<T> values;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  late String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final Widget? icon;

  SelectValueOption({
    required this.selectValueController,
    this.builder,
    required this.values,
    this.backgroundColor,
    this.borderRadius,
    this.label = '',
    this.labelStyle,
    this.showBorder = true,
    this.borderColor,
    this.padding,
    this.icon,
  }) {
    builder = builder ??
        (
          BuildContext context,
          T value,
          T? selectedValue,
          void Function(T?)? onChanged,
        ) =>
            RadioListTile<T>(
              visualDensity: const VisualDensity(horizontal: -4.0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: value,
              groupValue: selectedValue,
              onChanged: onChanged,
              title: Text(
                value.toString(),
              ),
            );
  }
}
