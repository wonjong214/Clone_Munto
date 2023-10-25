import 'package:flutter/material.dart';

class OpenMeeting_SubTitle_Text extends StatelessWidget{
  String _text;
  FontWeight _fontWeignt;

  OpenMeeting_SubTitle_Text(this._text, this._fontWeignt);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      maxLines: 2,
      style: TextStyle(
          fontSize: 16,
          fontWeight: _fontWeignt,
          height: 1.2
      ),
    );
  }
}