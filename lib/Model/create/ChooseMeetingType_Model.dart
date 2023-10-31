import 'package:flutter/material.dart';

class ChooseMeetingType_Model{
  Color? _iconcolor;
  Color? _iconbackcolor;
  Color? _containerbackcolor;
  Color? _containerbordercolor;
  Color? _titletextcolor;
  Color? _subtextcolor;


  ChooseMeetingType_Model(this._iconcolor, this._iconbackcolor, this._containerbackcolor,
      this._containerbordercolor, this._titletextcolor, this._subtextcolor);

  Color? get iconcolor => _iconcolor;
  Color? get iconbackcolor => _iconbackcolor;
  Color? get containerbackcolor => _containerbackcolor;
  Color? get containerbordercolor => _containerbordercolor;
  Color? get titletextcolor => _titletextcolor;
  Color? get subtextcolor => _subtextcolor;

  set iconcolor(Color? color){
    _iconcolor = color;
  }

  set iconbackcolor(Color? color){
    _iconbackcolor = color;
  }

  set containerbackcolor(Color? color){
    _containerbackcolor = color;
  }

  set containerbordercolor(Color? color){
    _containerbordercolor = color;
  }

  set titletextcolor(Color? color){
    _titletextcolor = color;
  }

  set subtextcolor(Color? color){
    _subtextcolor = color;
  }

}