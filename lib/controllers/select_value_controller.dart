import 'package:flutter/material.dart';

class SelectValueController<T> extends ValueNotifier<T?> {
  SelectValueController({T? value}) : super(value);

  void change(T? value) {
    this.value =  value;
    notifyListeners();
  }

  void clear() {
    value = null;
    notifyListeners();
  }
}
