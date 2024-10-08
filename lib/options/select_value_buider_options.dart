import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';

import 'widget_options.dart';

typedef SelectValueBuilder<T> = Widget Function(
  BuildContext context,
  T value,
  T? selectedValue,
  void Function(T?)? onChanged,
);

class SelectedValueOption<T> {
  final SelectValueController<T> selectValueController;
  late final SelectValueBuilder<T>? builder;
  final WidgetOptions widgetOptions;

  SelectedValueOption({
    required this.selectValueController,
    required this.widgetOptions,
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
