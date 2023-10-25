import 'package:flutter/material.dart';

class OpenMeeting_Title_Text extends StatelessWidget{
  String _text;
  Color _color;
  FontWeight _fontWeight;

  OpenMeeting_Title_Text(this._text, this._color, this._fontWeight);

  @override
  Widget build(BuildContext context) {

    return Text(
      _text,
      style: TextStyle(
          fontSize: 22,
          color: _color,
          fontWeight: _fontWeight
      ),
    );
  }
}