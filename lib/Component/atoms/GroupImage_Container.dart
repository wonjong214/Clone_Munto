import 'package:flutter/material.dart';

class GroupImage extends StatelessWidget{
  Widget iconbutton;
  String image;

  GroupImage(this.iconbutton, this.image);

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: iconbutton
      )
    );
  }
}