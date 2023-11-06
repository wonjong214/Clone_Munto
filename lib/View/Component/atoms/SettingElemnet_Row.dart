import 'package:flutter/material.dart';

class SettingElement_Row extends StatelessWidget{
  String text;

  SettingElement_Row({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 17
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}