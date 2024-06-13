import 'package:flutter/material.dart';
import 'package:value_selector/options/options.dart';

class SelectedValueItemWidget<T> extends StatefulWidget {
  final VoidCallback onPressed;
  final SelectValueOption<T> selectValueOption;

  const SelectedValueItemWidget({
    super.key,
    required this.selectValueOption,
    required this.onPressed,
  });

  @override
  State<SelectedValueItemWidget<T>> createState() => _SelectedValueItemWidgetState<T>();
}

class _SelectedValueItemWidgetState<T> extends State<SelectedValueItemWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
          padding: widget.selectValueOption.padding ??
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: widget.selectValueOption.backgroundColor,
            border: widget.selectValueOption.showBorder == true
                ? Border.all(
                    color: widget.selectValueOption.borderColor ?? Colors.black,
                  )
                : null,
            borderRadius:
                BorderRadius.circular(widget.selectValueOption.borderRadius ?? 8),
          ),
          child: ValueListenableBuilder<T?>(
            valueListenable: widget.selectValueOption.selectValueController,
            builder: (context, value, child) {
              String label = value?.toString() ?? widget.selectValueOption.label;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: widget.selectValueOption.labelStyle,
                  ),
                  widget.selectValueOption.icon ?? const SizedBox(),
                ],
              );
            },
          )),
    );
  }
}
