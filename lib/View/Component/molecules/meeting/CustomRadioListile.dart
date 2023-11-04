import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleRadio_Button.dart';

class CustomRadioListtile extends StatelessWidget {

  Color? bordercolor;

  Color? incirclecolor;

  String? label;

  CustomRadioListtile({required this.bordercolor,required this.incirclecolor,required this.label});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleRadio_Button(
            bordercolor: bordercolor!,
            incirclecolor: incirclecolor!),
        SizedBox(width: 15,),
        Text(
          label!,
          style: TextStyle(
            fontSize: 17,
          ),
        )
      ],
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleRadio_Button.dart';

class CustomRadioListtile extends StatelessWidget {

  Color? bordercolor;

  Color? incirclecolor;

  String? label;

  CustomRadioListtile({required this.bordercolor,required this.incirclecolor,required this.label});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleRadio_Button(
            bordercolor: bordercolor!,
            incirclecolor: incirclecolor!),
        SizedBox(width: 15,),
        Text(
          label!,
          style: TextStyle(
            fontSize: 17,
          ),
        )
      ],
    );
  }
}*/
