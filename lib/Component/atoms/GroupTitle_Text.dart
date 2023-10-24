import 'package:flutter/material.dart';


class GroupTitle_Text extends StatelessWidget{
  String _text;

  GroupTitle_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

