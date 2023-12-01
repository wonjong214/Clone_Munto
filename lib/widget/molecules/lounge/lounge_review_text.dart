import 'package:flutter/material.dart';

class LoungeReviewText extends StatelessWidget{
  String _text;

  LoungeReviewText(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Text(
        _text,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 15,
            height: 1.3
        ),
      ),
    );
  }
}