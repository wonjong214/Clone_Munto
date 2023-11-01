import 'package:flutter/material.dart';

class ThirtyRoundedInfinity_Container extends StatelessWidget{
  String? _text;
  Color? _buttoncolor;
  Color? _buttontextcolor;

  ThirtyRoundedInfinity_Container({required String? text, Color? buttoncolor = const Color(0xffdbdbdb), Color? buttontextcolor = Colors.grey}){
    this._text = text;
    this._buttoncolor = buttoncolor;
    this._buttontextcolor = buttontextcolor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _buttoncolor!
      ),
      child: Text(
        _text!,
        style: TextStyle(
          fontSize: 17,
          color: _buttontextcolor!,
        ),
      ),
    );
  }

}