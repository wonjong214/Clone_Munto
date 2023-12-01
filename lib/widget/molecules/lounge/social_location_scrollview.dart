import 'package:flutter/material.dart';
import 'package:loginscreen/widget/molecules/lounge/social_info_container.dart';
import 'package:loginscreen/widget/molecules/lounge/social_location_container.dart';

class SocialLocaitionScrollView extends StatelessWidget{
  String meetingImage;
  String meetingTitle;
  String meetingType;
  String meetingLocation;
  String meetingTime;
  String mapLocation;
  String mapDetailLocation;

  SocialLocaitionScrollView({required this.meetingImage, required this.meetingTitle, required this.meetingType,
  required this.meetingLocation, required this.meetingTime, required this.mapLocation, required this.mapDetailLocation});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SocialInfoContainer(image: meetingImage, title: meetingTitle, type: meetingType, location: meetingLocation, date: meetingTime),
            SizedBox(width: 10,),
            SocialLocationContainer(location: mapLocation, detailLocation: mapDetailLocation),
          ],
        ),
      )
    );
  }
}