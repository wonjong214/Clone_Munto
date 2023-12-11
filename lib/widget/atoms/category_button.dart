import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';

class CategoryButton extends StatelessWidget{
  IconData icon;
  String title;

  CategoryButton(this.icon,this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff212121),
              overflow: TextOverflow.ellipsis
            ),
          )
        ],
      ),
    );
  }
}