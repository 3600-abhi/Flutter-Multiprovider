import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier {
  double sliderValue = 1;

  void updateSliderValue(double newSliderValue) {
    sliderValue = newSliderValue;
    notifyListeners();
  }
}
