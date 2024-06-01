import 'package:flutter/material.dart';
import 'package:value_selector/options/options.dart';

class SelectedValueItemWidget<T> extends StatelessWidget {
  final SelectedValueItemOptions<T> selectedValueItemOptions;

  const SelectedValueItemWidget(
      {super.key, required this.selectedValueItemOptions});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: selectedValueItemOptions.padding,
        decoration: BoxDecoration(
          color: selectedValueItemOptions.backgroundColor,
          border: selectedValueItemOptions.showBorder == true
              ? Border.all(
                  color: selectedValueItemOptions.borderColor ?? Colors.black,
                )
              : null,
          borderRadius:
              BorderRadius.circular(selectedValueItemOptions.borderRadius ?? 8),
        ),
        child: ValueListenableBuilder<T?>(
          valueListenable: selectedValueItemOptions.selectValueController,
          builder: (context, value, child) {
            return Text(
              selectedValueItemOptions.label,
              style: selectedValueItemOptions.labelStyle,
            );
          },
        ));
  }
}
