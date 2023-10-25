import 'package:flutter/material.dart';

class RecommendTag_Container extends StatelessWidget{
  String text;

  RecommendTag_Container(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0Xbbfeeaea)
      ),
      padding: EdgeInsets.only(left:6, right:6, top: 3, bottom: 3),
      child: Text(text, style: TextStyle(color: Color(0xffdc143c), fontWeight: FontWeight.w600)),
    );
  }
}