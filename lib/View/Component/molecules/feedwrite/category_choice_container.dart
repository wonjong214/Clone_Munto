import 'package:flutter/material.dart';

class CategoryChoiceContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.article, size: 25, color: Colors.grey,),
          SizedBox(width: 10,),
          Text(
            '주제 선택',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right,
            size: 25,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}