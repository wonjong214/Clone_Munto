import 'package:flutter/material.dart';

class ProfileGroupTitle_Text extends StatelessWidget{
  String text;
  
  ProfileGroupTitle_Text({required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}