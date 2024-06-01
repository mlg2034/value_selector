import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';

class SelectValueBuilderOption<T> {
  final SelectValueController<T> selectValueController;
  final Widget Function(BuildContext context, List<T> values, T? selectedValue)?
      builder;

  SelectValueBuilderOption({
    required this.selectValueController,
    required this.builder,
  });
}
