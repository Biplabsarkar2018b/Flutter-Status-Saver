import 'package:flutter/foundation.dart';

class BottomNavProvider extends ChangeNotifier {
  int _currIndex = 0;

  int get currIndex => _currIndex;

  void changeIndex(int value) {
    _currIndex = value;
    notifyListeners();
  }
}
