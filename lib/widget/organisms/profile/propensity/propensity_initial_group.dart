import 'package:flutter/material.dart';

class PropensityInitialGroup extends StatelessWidget{
  String text;

  PropensityInitialGroup({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat_sharp, size: 50, color: Color(0xffdbdbdb),),
          SizedBox(height: 10,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
    );
  }
}