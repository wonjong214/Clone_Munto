import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

class KeyWordTag_Container extends StatelessWidget{
  String text;

  KeyWordTag_Container(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: tag_color
      ),
      padding: EdgeInsets.only(left:6, right:6, top: 3, bottom: 3),
      child: Text(text),
    );
  }
}