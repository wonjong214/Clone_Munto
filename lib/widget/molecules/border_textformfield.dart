import 'package:flutter/material.dart';

class BorderTextformfield extends StatelessWidget{
  String? hintText;
  Function getText;
  bool obscure;
  TextEditingController? controller;

  BorderTextformfield({required this.hintText, required this.getText, this.obscure = false, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      onChanged: (text){
        getText(text);
      },
      style: TextStyle(
        fontSize: 17,
      ),
      cursorColor: Colors.grey.shade700,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Color(0xffa9a9a9), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Color(0xff616161), width: 1.0),
          ),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          )
      ),
    );
  }
}