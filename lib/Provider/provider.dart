import 'package:flutter/widgets.dart';

class MyData with ChangeNotifier {
  String message = 'I am Ali Ather';

  List<String> names = ['ali', 'hamza', 'junaid'];

  int count = 1;
  void increment() {
    count++;
    names.add('unknown');
    notifyListeners();
  }
}
