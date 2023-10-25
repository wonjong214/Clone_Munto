import 'package:flutter/material.dart';

class OpenMeeting_ArrowCircularContainer extends StatelessWidget{
  Color _bg_color;
  double? _size;

  OpenMeeting_ArrowCircularContainer(this._bg_color, this._size);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _bg_color
        ),
        child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: _size,)
    );
  }
}