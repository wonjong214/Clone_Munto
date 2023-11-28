import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/keyword_tag_container.dart';

import '../../../../constants/colors.dart';
import '../../atoms/common_grey_icon.dart';
import '../../atoms/common_text.dart';
import '../lounge/profile_group.dart';

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
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    icon: icon, color: Colors.white, onPressed: onPressed),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: KeyWordTagContainer(text: tag),
                    ),
                    CommonText(
                      text: title,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        Text(
                          '챌린지·',
                          style: TextStyle(
                            color: meetingTabGroupSubTitleColor,
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
                          style: TextStyle(color: meetingTabGroupSubTitleColor),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ProfileGroup(participants),
                        CommonGreyIcon(Icons.people),
                        Text('$participants/$total'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
