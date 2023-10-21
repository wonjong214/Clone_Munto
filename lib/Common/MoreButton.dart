import 'package:flutter/material.dart';

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
              color: Colors.white60,
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

        /*ElevatedButton(
            onPressed: () {print('button touch');},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white60,
              foregroundColor: Colors.black,
              shadowColor: Color(0)
            ),
            child: Text('더보기 >'))*/
    );
  }
}