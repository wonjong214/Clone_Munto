import 'package:flutter/material.dart';

class AppBarTab extends StatelessWidget{
  String _text;

  AppBarTab(this._text);

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