import 'package:flutter/material.dart';

import 'CircleIcon_Icon.dart';

class Close_Button extends StatelessWidget{
  void Function()? onPressed;

  Close_Button({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleIcon(
        width: 15,
        height: 15,
        icon: Icon(
          Icons.clear,
          size: 15,
          color: Colors.white,
        ),
        backgroundcolor: Colors.grey,
      ),
    );
  }

}