import 'package:flutter/material.dart';

class WidgetOptions<T>{
  final List<T> values;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final Widget? icon;
  WidgetOptions(
      {
        required this.values,
        this.backgroundColor,
        this.borderRadius,
        this.label = '',
        this.labelStyle,
        this.showBorder = true,
        this.borderColor,
        this.padding,
        this.icon,
      }
      );
}