import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiSelectController<T> extends ValueNotifier<List<T>>{
  MultiSelectController({List<T>? values}):super(values??[]);

  void add(T value){
    this.value.add(value);
    notifyListeners();
  }

  void remove(T value){
    this.value.remove(value);
    notifyListeners();
  }

  void clear(){
    value.clear();
    notifyListeners();
  }
}