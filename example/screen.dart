import 'package:flutter/material.dart';
import 'package:value_selector/conponents/components.dart';
import 'package:value_selector/controllers/select_value_controller.dart';
import 'package:value_selector/options/options.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SelectValueController selectValueController = SelectValueController();
    final SelectedValueItemOptions selectedValueItemOptions =
        SelectedValueItemOptions(
      label: 'Example',
      selectValueController: selectValueController,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectedValueItemWidget(
            selectedValueItemOptions: selectedValueItemOptions,
          )
        ],
      ),
    );
  }
}
