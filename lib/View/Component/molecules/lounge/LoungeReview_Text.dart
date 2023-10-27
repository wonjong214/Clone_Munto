import 'package:flutter/material.dart';

class LoungeReview_Text extends StatefulWidget{
  String _text;

  LoungeReview_Text(this._text);

  @override
  State<LoungeReview_Text> createState() => _LoungeReview_TextState(_text);
}

class _LoungeReview_TextState extends State<LoungeReview_Text> {

  String _text;

  _LoungeReview_TextState(this._text){

  }

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