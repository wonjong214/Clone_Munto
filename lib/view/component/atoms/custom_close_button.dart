import 'package:flutter/material.dart';

import 'circle_icon.dart';

class CustomCloseButton extends StatelessWidget{
  void Function()? onPressed;

  CustomCloseButton({required this.onPressed});

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
        backgroundColor: Colors.grey,
      ),
    );
  }

}