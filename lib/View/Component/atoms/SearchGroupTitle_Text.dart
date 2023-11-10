import 'package:flutter/material.dart';

class SearchGroupTitle_Text extends StatelessWidget{
  String text;

  SearchGroupTitle_Text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}