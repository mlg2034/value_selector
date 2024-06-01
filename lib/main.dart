import 'package:flutter/material.dart';
import 'package:value_selector/conponents/components.dart';
import 'package:value_selector/controllers/select_value_controller.dart';
import 'package:value_selector/options/options.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final SelectValueController<String> selectValueController =
        SelectValueController(value: '');
    return SelectedValueItemWidget(
      selectedValueItemOptions: SelectedValueItemOptions(
        label: 'example',
        selectValueController: selectValueController,

      ),
    );
  }
}
