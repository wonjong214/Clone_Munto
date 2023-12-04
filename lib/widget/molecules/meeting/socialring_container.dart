import 'package:flutter/material.dart';
import '../../atoms/common_grey_icon.dart';
import '../../atoms/common_text.dart';
import '../../atoms/keyword_tag_container.dart';
import '../lounge/profile_group.dart';

class SocialringContainer extends StatelessWidget {
  double? width;
  String image;
  Widget icon;
  Function()? onPressed;
  List<String> tag;
  String title;
  String location;
  String date;
  int participants;
  int total;

  SocialringContainer({this.width, required this.image, required this.icon, required this.onPressed, required this.tag,
    required this.title, required this.location, required this.date, required this.participants, required this.total});


  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    icon: icon,
                    color: Colors.white,
                    onPressed: onPressed),
              ),
            ),
            Expanded(
              child: SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < tag.length; i++)
                            if (tag[i] != '추천')
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: KeyWordTagContainer(
                                  text: tag[i],
                                ),
                              )
                            else
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: KeyWordTagContainer(
                                  text: tag[i],
                                  textColor: Color(0xffdc143c),
                                  backColor: Color(0Xbbfeeaea),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                        ],
                      ),
                      CommonText(
                        text: title,
                        fontWeight: FontWeight.w600,
                      ),                      Row(
                        children: [
                          Text('소셜링·'),
                          CommonGreyIcon(Icons.location_on),
                          Expanded(
                            child: Text(
                              '$location·$date',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProfileGroup(participants),
                          CommonGreyIcon(Icons.people),
                          Text('$participants/$total'),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ));
  }
}
