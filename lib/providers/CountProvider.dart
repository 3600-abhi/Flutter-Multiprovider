import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier {
  int count = 0;

  void updateCount() {
    count++;
    notifyListeners();
  }
}
