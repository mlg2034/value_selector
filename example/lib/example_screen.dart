import 'package:flutter/material.dart';
import 'package:value_selector/conponents/components.dart';
import 'package:value_selector/controllers/select_value_controller.dart';
import 'package:value_selector/options/options.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> examples = [
      'example 1',
      'example 2',
      'example 3',
      'example 4'
    ];
    final SelectValueController<String> selectValueController =
        SelectValueController<String>();

    final SelectValueOption selectValueOption = SelectValueOption(
      selectValueController: selectValueController,
      values: examples,
      label: 'Example',
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectedValueItemWidget(
            selectValueOption: selectValueOption,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => SelectValueBuilder(
                  options: selectValueOption,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
