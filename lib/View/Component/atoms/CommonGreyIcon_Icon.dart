import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';

class CommonGreyIcon extends StatelessWidget{
  IconData? _icon;

  CommonGreyIcon(this._icon);

  @override
  Widget build(BuildContext context) {
    return Icon(_icon, size: 15, color: subtitle_color,);
  }
}