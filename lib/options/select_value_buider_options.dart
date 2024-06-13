import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';


typedef SelectValueBuilder<T> = Widget Function(
  BuildContext context,
  T value,
  T? selectedValue,
  void Function(T?)? onChanged,
);


class SelectValueOption<T> {

  final SelectValueController<T> selectValueController;
  late final SelectValueBuilder<T>? builder;
  final List<T> values;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final Widget? icon;

  SelectValueOption({
    required this.selectValueController,
    required this.values,
    this.backgroundColor,
    this.borderRadius,
    this.label = '',
    this.labelStyle,
    this.showBorder = true,
    this.borderColor,
    this.padding,
    this.builder,
    this.icon,
  }) {
    this.builder = builder ??
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
