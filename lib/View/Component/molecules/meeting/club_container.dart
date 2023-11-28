import 'package:flutter/material.dart';

import '../../atoms/common_grey_icon.dart';
import '../../atoms/common_text.dart';
import '../../atoms/keyword_tag_container.dart';
import '../lounge/profile_group.dart';

class ClubContainer extends StatelessWidget{
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

  ClubContainer({this.width, required this.image, required this.icon, required this.onPressed, required this.tag,
    required this.title, required this.location, required this.date, required this.participants, required this.total});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {print('touch');},
        child: Container(
          margin: EdgeInsets.only(bottom: 15,),
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white60
            ),
            child:Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                        icon: icon,
                        color: Colors.white,
                        onPressed: onPressed,
                    ),
                  ),
                ),
                SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(tag.length, (index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: KeyWordTagContainer(text: tag[index]),
                          )),
                        ),
                        CommonText(
                          text: title,
                          fontWeight: FontWeight.w600,
                        ),
                        Row(
                          children: [
                            Text('클럽·',
                              style: TextStyle(
                                  color: Color(0XFF696969)
                              ),),
                            CommonGreyIcon(Icons.location_on),
                            SizedBox(width: 5,),
                            SizedBox(
                                child: Text(
                                  location,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                )
                            ),
                            SizedBox(width: 5,),
                            Icon(
                              Icons.chat_outlined,
                              color: Color(0XFF006400),
                              size: 15,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              date,
                              style: TextStyle(
                                  color: Color(0XFF006400)
                              ),
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
                    )
                ),
              ],
            )
        )
    );
  }
}