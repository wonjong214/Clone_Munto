import 'package:flutter/material.dart';
import 'package:Clone_Munto/constants/colors.dart';

class MoreButton extends StatelessWidget{
  double _width;

  MoreButton(this._width){}

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
              color: containerColor,
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