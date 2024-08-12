import 'package:flutter/material.dart';

import '../options/options.dart';
import 'components.dart';

class MultiSelectValueItemWidget<T> extends StatefulWidget {
  final VoidCallback onPressed;
  final MultiSelectValueOptions options;

  const MultiSelectValueItemWidget({
    super.key,
    required this.options,
    required this.onPressed,
  });

  @override
  State<MultiSelectValueItemWidget> createState() =>
      _MultiSelectValueItemWidgetState();
}

class _MultiSelectValueItemWidgetState<T>
    extends State<MultiSelectValueItemWidget<T>> {
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
          child: ValueListenableBuilder(
            valueListenable: widget.options.controller,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: widget.options.controller.value.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ValueWrapper(
                    options: widget.options.valueWrapperOptions,
                    controller: widget.options.controller,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
