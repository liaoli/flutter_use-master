import 'package:flutter/material.dart';

import 'state.dart';

class ProHighCounterProvider extends ChangeNotifier {
  final state = ProExtendedCounterState();

  void increment() {
    state.count++;
    notifyListeners();
  }
}
