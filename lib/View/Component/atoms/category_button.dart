import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';

class CategoryButton extends StatelessWidget{
  IconData icon;
  String title;

  CategoryButton(this.icon,this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff212121)
            ),
          )
        ],
      ),
    );
  }
}