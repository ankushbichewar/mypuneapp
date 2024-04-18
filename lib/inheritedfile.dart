import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SharedData extends InheritedWidget {
   int data;
   SharedData({
    super.key,
    required this.data,
    required super.child,
  });
  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}
