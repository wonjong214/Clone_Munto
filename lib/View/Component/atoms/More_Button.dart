import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';

class More_Button extends StatelessWidget{
  double _width;
  More_Button(this._width){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {print('button touch');},
      child: SizedBox(
          width: _width,
          height: 50,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: container_color,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              '더보기 >',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          )
    )
    );
  }
}