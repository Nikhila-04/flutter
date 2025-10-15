import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier
{
  int _Counter=0;
  int get Counter => _Counter;
  void increment()
  {
    _Counter++;
    notifyListeners();
  }

}