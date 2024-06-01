import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';

class SelectedValueModalBottomSheetOptions<T> {
  final SelectValueController<T> selectValueController;
  final List<T> values;
  final T selectedValue;
  final void Function(T value) onChange;
  final Widget? bottomWidget;
  SelectedValueModalBottomSheetOptions({
    required this.selectValueController,
    required this.values,
    required this.selectedValue,
    required this.onChange,
    this.bottomWidget
  });
}
