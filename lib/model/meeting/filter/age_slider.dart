import 'package:flutter/material.dart';

class AgeSlider{
  Color? _activeTrack;
  Color? _thumColor;
  Color? _activeTickMark;
  String? _label;

  AgeSlider(){
    this._activeTrack = Colors.grey.shade300;
    this._thumColor = Colors.grey.shade300;
    this._activeTickMark = Colors.grey.shade300;
    this._label = '누구나';
  }

  Color? get activetrack => this._activeTrack;
  Color? get thumbcolor => this._thumColor;
  Color? get activetickhmark => this._activeTickMark;
  String? get label => this._label;

  set activetrack(Color? color){
    this._activeTrack = color;
  }
  set thumbcolor(Color? color){
    this._thumColor = color;
  }
  set activetickhmark(Color? color){
    this._activeTickMark = color;
  }
  set label(String? text){
    this._label = text;
  }

}