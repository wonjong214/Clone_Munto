import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class SocialRingParticipant extends StatelessWidget{
  int participant;
  int total;

  SocialRingParticipant(this.participant,this.total);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$participant/$total',
      style: TextStyle(
          color: subtitle_color
      ),
    );
  }
}