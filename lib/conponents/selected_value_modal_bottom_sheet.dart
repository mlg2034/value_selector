import 'package:flutter/material.dart';
import 'package:value_selector/options/selected_value_modal_bottom_sheet_options.dart';

class SelectedValueModalBottomSheet extends StatelessWidget {
  final SelectedValueModalBottomSheetOptions options;

  const SelectedValueModalBottomSheet({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: options.values.length,
            itemBuilder: (context, index) {
              return RadioListTile(
                value: options.values[index],
                groupValue: options.selectedValue,
                onChanged: options.onChange,
              );
            }),
        options.bottomWidget ?? const SizedBox(),
      ],
    );
  }
}
