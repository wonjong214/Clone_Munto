import 'package:flutter/material.dart';

class Tag extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Icon(Icons.article_outlined, size: 40, color: Colors.grey, ),
          SizedBox(height: 30,),
          Text(
            '태그된 피드가 없어요',
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}