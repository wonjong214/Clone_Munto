import 'package:flutter/material.dart';

class AdditionalInformationContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.add_circle_outline, size: 25, color: Colors.grey,),
          SizedBox(width: 10,),
          Text(
            '추가 정보 입력하기',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down,
            size: 25,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}