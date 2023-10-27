import 'package:flutter/material.dart';

class LoungeKeywordTag_Container extends StatelessWidget{
  String _text;

  LoungeKeywordTag_Container(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.red,
          width: 1
        )
      ),
      child: Text(
        _text,
        style: TextStyle(
          color: Colors.red
        ),
      ),
    );
  }
}