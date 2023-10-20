import 'package:flutter/material.dart';

class ResolutionProvider with ChangeNotifier{
  double _width = 0;
  double _height = 0;

  double get width_get{
    return _width;
  }

  void width_set(double value){
    _width = value;
    //notifyListeners();
  }

  double get height_get{
    return _height;
  }

  void height_set(double value){
    _height = value;
    //notifyListeners();
  }

}