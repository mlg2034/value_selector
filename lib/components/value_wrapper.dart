import 'package:flutter/material.dart';
import 'package:value_selector/controllers/multu_select_controller.dart';

import '../options/options.dart';


class ValueWrapper<T> extends StatelessWidget {
  final ValueWrapperOptions ? options;
  final MultiSelectController<T> controller;

  const ValueWrapper({
     this.options,
    required this.controller,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           options!.child??const SizedBox(),
            IconButton(
              onPressed: controller.clear,
              icon: const Icon(
                Icons.close,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
