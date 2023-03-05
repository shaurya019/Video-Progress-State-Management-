import 'package:flutter/cupertino.dart';

class ProgressValue extends ChangeNotifier{
  double _progress = 0.00;
  double get progress => progress;

  set progress (double val){
    _progress = val;
    notifyListeners();
  }
}