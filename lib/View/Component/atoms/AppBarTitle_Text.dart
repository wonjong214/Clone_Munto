import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget{
  String _text;
  FontWeight? _fontweight;

  AppBarTitle(this._text,{FontWeight? fontweight = FontWeight.w600}){
    this._fontweight = _fontweight;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontFamily: 'apptitle',
        fontWeight: _fontweight,
        fontSize: 25,
      ),
    );
  }
}