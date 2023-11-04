import 'package:flutter/material.dart';

enum Quota {
  three("3~10명"),
  eleven("11~30명"),
  thirtyone("31~60명");

  final String korean;
  const Quota(this.korean);
}

class SocialQuota_Model{
  Quota? _quota;
  Color? _threeborder;
  Color? _threein;
  Color? _elevenborder;
  Color? _elevenin;
  Color? _thirtyoneborder;
  Color? _thirtyonein;

  SocialQuota_Model(){
    _threeborder = Colors.grey;
    _threein = Colors.transparent;
    _elevenborder = Colors.grey;
    _elevenin = Colors.transparent;
    _thirtyoneborder = Colors.grey;
    _thirtyonein = Colors.transparent;
  }

  Quota? get quota => this._quota;
  Color? get threeborder => this._threeborder;
  Color? get threein => this._threein;
  Color? get elevenborder => this._elevenborder;
  Color? get elevenin => this._elevenin;
  Color? get thirtyoneborder => this._thirtyoneborder;
  Color? get thirtyonein => this._thirtyonein;

  void set threeborder(Color? color){
    this._threeborder = color;
  }

  void set threein(Color? color){
    this._threein = color;
  }

  void set elevenborder(Color? color){
    this._elevenborder = color;
  }

  void set elevenin(Color? color){
    this._elevenin = color;
  }

  void set thirtyoneborder(Color? color){
    this._thirtyoneborder = color;
  }

  void set thirtyonein(Color? color){
    this._thirtyonein = color;
  }

  void threebutton_touchevent(){
    if(quota != Quota.three){
      _threeborder = Colors.red;
      _threein = Colors.red;
      _elevenborder = Colors.grey;
      _elevenin = Colors.transparent;
      _thirtyoneborder = Colors.grey;
      _thirtyonein = Colors.transparent;
      _quota = Quota.three;
    }
  }

  void elevenbutton_touchevent(){
    if(quota != Quota.eleven){
      _threeborder = Colors.grey;
      _threein = Colors.transparent;
      _elevenborder = Colors.red;
      _elevenin = Colors.red;
      _thirtyoneborder = Colors.grey;
      _thirtyonein = Colors.transparent;
      _quota = Quota.eleven;
    }
  }

  void thirtyonebutton_touchevent(){
    if(quota != Quota.thirtyone){
      _threeborder = Colors.grey;
      _threein = Colors.transparent;
      _elevenborder = Colors.grey;
      _elevenin = Colors.transparent;
      _thirtyoneborder = Colors.red;
      _thirtyonein = Colors.red;
      _quota = Quota.thirtyone;
    }
  }

}