import 'package:flutter/material.dart';
import 'package:value_selector/options/select_value_buider_options.dart';

class SelectValueBuilder<T> extends StatelessWidget {
  final SelectValueOption options;

  const SelectValueBuilder({super.key, required this.options});

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
          itemCount: options.values.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: _toggleSelection(context, options.values[index]),
            child: options.builder!(
              context,
              options.values[index],
              value,
              (val) {},
            ),
          ),
        );
      },
    );
  }
}
