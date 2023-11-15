import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/lounge/SocialInfo_Container.dart';
import 'package:loginscreen/View/Component/molecules/lounge/SocialLocation_Container.dart';

class Social_Locaition_ScrollView extends StatelessWidget{
  String meetingimage;
  String meetingtitle;
  String meetingtype;
  String meetinglocation;
  String meetingtime;
  String maplocation;
  String mapdetaillocation;

  Social_Locaition_ScrollView({required this.meetingimage, required this.meetingtitle, required this.meetingtype,
  required this.meetinglocation, required this.meetingtime, required this.maplocation, required this.mapdetaillocation});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SocialInfo_Container(image: meetingimage, title: meetingtitle, type: meetingtype, location: meetinglocation, date: meetingtime),
            SocialLocation_Container(location: maplocation, detaillocation: mapdetaillocation),
          ],
        ),
      )
    );
  }
}