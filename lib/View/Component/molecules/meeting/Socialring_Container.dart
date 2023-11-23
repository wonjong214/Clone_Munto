import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';
import 'package:loginscreen/View/Component/molecules/lounge/ProfileGroup.dart';

import '../../atoms/CommonGreyIcon_Icon.dart';
import '../../atoms/Common_Text.dart';

class Socialring_Container extends StatelessWidget {
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

  Socialring_Container({this.width, required this.image, required this.icon, required this.onPressed, required this.tag,
    required this.title, required this.location, required this.date, required this.participants, required this.total});


  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.only(bottom: 15),
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
                      image: AssetImage(
                          image),
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
                                child: KeyWordTag_Container(
                                  text: tag[i],
                                ),
                              )
                            else
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: KeyWordTag_Container(
                                  text: tag[i],
                                  textcolor: Color(0xffdc143c),
                                  backcolor: Color(0Xbbfeeaea),
                                  fontweight: FontWeight.bold,
                                ),
                              )
                        ],
                      ),
                      Common_Text(
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
