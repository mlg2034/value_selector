import 'package:flutter/material.dart';
import 'package:value_selector/components/components.dart';
import 'package:value_selector/controllers/select_value_controller.dart';
import 'package:value_selector/options/options.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final examples = <String>[
      'example 1',
      'example 2',
      'example 3',
      'example 4'
    ];

    final selectValueController = SelectValueController<String>();

    final exampleOptions = SelectedValueOption(
      selectValueController: selectValueController,
      widgetOptions: WidgetOptions(
        values: examples,
        label: 'Example',
      ),
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectedValueItemWidget(
            options: exampleOptions,
             onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => SelectValueBuilderWidget(
                  options: exampleOptions,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
