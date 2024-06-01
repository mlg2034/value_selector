import 'package:flutter/material.dart';
import 'package:value_selector/controllers/select_value_controller.dart';

class SelectedValueItemOptions<T> {
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final SelectValueController<T> selectValueController;

  SelectedValueItemOptions(
      {this.backgroundColor,
      this.borderRadius,
    required  this.label,
      this.labelStyle,
      this.showBorder=true,
      this.borderColor,
      required this.selectValueController,
      this.padding,
      });
}
