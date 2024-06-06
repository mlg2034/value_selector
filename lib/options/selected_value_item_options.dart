import 'package:flutter/material.dart';

class SelectedValueItemOptions<T> {
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final Widget? icon;

  SelectedValueItemOptions({
    this.backgroundColor,
    this.borderRadius,
    required this.label,
    this.labelStyle,
    this.showBorder = true,
    this.borderColor,
    this.padding,
    this.icon,
  });
}
