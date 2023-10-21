import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget{
  double _width;
  MoreButton(this._width){}

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: _width,
        child:ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white60),
              foregroundColor: MaterialStateProperty.all(Colors.black),),
            child: Text('더보기 >'))
    );
  }
}