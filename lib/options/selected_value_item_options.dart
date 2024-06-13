import 'package:flutter/material.dart';

class SelectedValueItemOptions {

  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final bool? showBorder;
  final Color? borderColor;
  final Widget? icon;

  const SelectedValueItemOptions({
    required this.label,
    this.backgroundColor,
    this.borderRadius,
    this.labelStyle,
    this.showBorder = true,
    this.borderColor,
    this.padding,
    this.icon,
  });

}
