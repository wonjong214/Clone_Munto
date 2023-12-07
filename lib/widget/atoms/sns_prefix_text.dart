import 'package:flutter/material.dart';

class SNSPrefixText extends StatelessWidget{
  String text;

  SNSPrefixText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top: 11, bottom: 11),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          color: Colors.grey,
        ),
      ),
    );
  }
}