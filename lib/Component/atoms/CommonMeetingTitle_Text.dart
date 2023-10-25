import 'package:flutter/material.dart';

class CommonMeetingTitle_Text extends StatelessWidget{
  String text;

  CommonMeetingTitle_Text(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 17,
          fontWeight: FontWeight.w600
      ),
    );
  }
}