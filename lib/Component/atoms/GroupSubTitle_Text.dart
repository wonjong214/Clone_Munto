import 'package:flutter/material.dart';
import '../../Constants/colors.dart';

class GroupSubTitle_Text extends StatelessWidget{
  String _text;

  GroupSubTitle_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        color: subtitle_color,
        fontSize: 15,
      ),
    );
  }
}
