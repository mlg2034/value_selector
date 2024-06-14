import 'package:flutter/material.dart';
import 'package:value_selector/controllers/multu_select_controller.dart';
import 'package:value_selector/options/options.dart';

class MultiSelectValueOptions<T> {
  final WidgetOptions widgetOptions;
  late final SelectValueBuilder<T>? builder;
  final MultiSelectController controller;
  final ValueWrapperOptions<T>? valueWrapperOptions;
  MultiSelectValueOptions({
    required this.controller,
    required this.widgetOptions,
    this.valueWrapperOptions,
    this.builder,
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
