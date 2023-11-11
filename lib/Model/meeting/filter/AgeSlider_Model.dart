import 'package:flutter/material.dart';

class AgeSlider_Model{
  Color? _activetrack;
  Color? _thumbcolor;
  Color? _activetickhmark;
  String? _label;

  AgeSlider_Model(){
    this._activetrack = Colors.grey.shade300;
    this._thumbcolor = Colors.grey.shade300;
    this._activetickhmark = Colors.grey.shade300;
    this._label = '누구나';
  }

  Color? get activetrack => this._activetrack;
  Color? get thumbcolor => this._thumbcolor;
  Color? get activetickhmark => this._activetickhmark;
  String? get label => this._label;

  set activetrack(Color? color){
    this._activetrack = color;
  }
  set thumbcolor(Color? color){
    this._thumbcolor = color;
  }
  set activetickhmark(Color? color){
    this._activetickhmark = color;
  }
  set label(String? text){
    this._label = text;
  }

}