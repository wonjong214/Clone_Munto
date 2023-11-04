import 'package:flutter/material.dart';

class FilterBody_Text extends StatelessWidget{
  String? _text;
  Color? _color;

  FilterBody_Text({required String? text, Color? color = Colors.black}){
    this._text = text;
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _text!,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: _color!,
      ),
    );
  }
}