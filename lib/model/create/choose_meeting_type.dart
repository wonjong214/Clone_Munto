import 'package:flutter/material.dart';

class ChooseMeetingType{
  Color? _iconColor;
  Color? _iconBackColor;
  Color? _containerBackColor;
  Color? _containerBorderColor;
  Color? _titleTextColor;
  Color? _subtextColor;


  ChooseMeetingType(this._iconColor, this._iconBackColor, this._containerBackColor,
      this._containerBorderColor, this._titleTextColor, this._subtextColor);

  Color? get iconColor => _iconColor;
  Color? get iconBackColor => _iconBackColor;
  Color? get containerBackColor => _containerBackColor;
  Color? get containerBorderColor => _containerBorderColor;
  Color? get titleTextColor => _titleTextColor;
  Color? get subtextColor => _subtextColor;

  set iconColor(Color? color){
    _iconColor = color;
  }

  set iconBackColor(Color? color){
    _iconBackColor = color;
  }

  set containerBackColor(Color? color){
    _containerBackColor = color;
  }

  set containerBorderColor(Color? color){
    _containerBorderColor = color;
  }

  set titleTextColor(Color? color){
    _titleTextColor = color;
  }

  set subtextColor(Color? color){
    _subtextColor = color;
  }

}