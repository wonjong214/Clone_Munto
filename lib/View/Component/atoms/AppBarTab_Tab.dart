import 'package:flutter/material.dart';

class AppBarTab_Tab extends StatelessWidget{
  String _text;

  AppBarTab_Tab(this._text);

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
            _text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23)
        )
    );
  }
}