import 'package:flutter/material.dart';

class Category_Button extends StatelessWidget{
  IconData _icon;
  String _title;

  Category_Button(this._icon,this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(_icon),
          Text(
            _title,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}