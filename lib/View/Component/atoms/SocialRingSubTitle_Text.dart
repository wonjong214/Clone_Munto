import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class SocialRingSubTitle_Text extends StatelessWidget{
  String location;
  String date;

  SocialRingSubTitle_Text(this.location, this.date);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${location}·${date}',
      maxLines: 1,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 15,
          color: subtitle_color
      ),
    );
  }
}