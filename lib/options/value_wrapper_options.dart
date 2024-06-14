
import 'package:flutter/material.dart';

class ValueWrapperOptions <T>{
  final bool showBorder;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  late final Widget? child;
  final String label;
  ValueWrapperOptions({
    this.showBorder = false,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.child,
    this.label=''
  }){
    this.child=child??Text(label);
  }
}
