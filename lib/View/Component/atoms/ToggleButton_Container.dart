import 'package:flutter/material.dart';

class ToggleButton_Container extends StatelessWidget{
  String _text;

  ToggleButton_Container(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: Color(0xcca9a9a9),
              width: 1
          )
      ),
      child: Text(_text),
    );
  }
}