import 'package:flutter/material.dart';
import 'package:value_selector/options/options.dart';

class SelectedValueItemWidget<T> extends StatefulWidget {
  final VoidCallback onPressed;
  final SelectedValueOption<T> options;

  const SelectedValueItemWidget({
    super.key,
    required this.options,
    required this.onPressed,
  });

  @override
  State<SelectedValueItemWidget<T>> createState() =>
      _SelectedValueItemWidgetState<T>();
}

class _SelectedValueItemWidgetState<T>
    extends State<SelectedValueItemWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: widget.options.widgetOptions.padding ??
            const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: widget.options.widgetOptions.backgroundColor,
            border: widget.options.widgetOptions.showBorder == true
                ? Border.all(
                    color: widget.options.widgetOptions.borderColor ??
                        Colors.black,
                  )
                : null,
            borderRadius: BorderRadius.circular(
                widget.options.widgetOptions.borderRadius ?? 8),
          ),
          child: ValueListenableBuilder<T?>(
            valueListenable: widget.options.selectValueController,
            builder: (context, value, child) {
              String label =
                  value?.toString() ?? widget.options.widgetOptions.label;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: widget.options.widgetOptions.labelStyle,
                  ),
                  widget.options.widgetOptions.icon ?? const SizedBox(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
