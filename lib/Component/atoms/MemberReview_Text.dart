import 'package:flutter/material.dart';

class MemberReview_Text extends StatelessWidget{
  String _text;

  MemberReview_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 15,
          height: 1.3
      ),
    );
  }
}