import 'package:flutter/material.dart';
import 'package:value_selector/options/select_value_buider_options.dart';

class SelectValueBuilderWidget<T> extends StatelessWidget {
  final SelectedValueOption options;

  const SelectValueBuilderWidget({super.key, required this.options});

  _toggleSelection(BuildContext context, T newValue) => () {
        if (options.selectValueController.value == newValue) {
          options.selectValueController.clear();
        } else {
          options.selectValueController.change(newValue);
        }
        Future.delayed(const Duration(milliseconds: 500), () {
          Navigator.of(context).pop();
        });
      };

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: options.selectValueController,
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: options.widgetOptions.values.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: _toggleSelection(context, options.widgetOptions.values[index]),
            child: options.builder!(
              context,
              options.widgetOptions.values[index],
              value,
              (val) {},
            ),
          ),
        );
      },
    );
  }
}
