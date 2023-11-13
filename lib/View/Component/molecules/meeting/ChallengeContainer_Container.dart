import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';

import '../../../../Constants/colors.dart';
import '../../atoms/CommonGreyIcon_Icon.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';

class ChallengeContainer extends StatelessWidget {
  double? width;
  String image;
  Widget icon;
  Function()? onPressed;
  String tag;
  String title;
  String date;
  String duration;
  int time;
  int participants;
  int total;

  ChallengeContainer(
      {this.width,
      required this.image,
      required this.icon,
      required this.onPressed,
      required this.tag,
      required this.title,
      required this.date,
      required this.duration,
      required this.time,
      required this.participants,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('touch');
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 15,
        ),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white60),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    icon: icon, color: Colors.white, onPressed: onPressed),
              ),
            ),
            SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KeyWordTag_Container(text: tag),
                  CommonMeetingTitle_Text(title),
                  Row(
                    children: [
                      Text(
                        '챌린지·',
                        style: TextStyle(
                          color: subtitle_color,
                        ),
                      ),
                      CommonGreyIcon(Icons.calendar_month),
                      SizedBox(
                          child: Text(
                        '$date· $duration',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      )),
                      CommonGreyIcon(Icons.check_circle),
                      Text(
                        '주 $time회',
                        style: TextStyle(color: subtitle_color),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CommonGreyIcon(Icons.people),
                      Text('$participants/$total'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
