import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/CommonGreyIcon_Icon.dart';

class SocialInfo_Container extends StatelessWidget {
  String image;
  String title;
  String type;
  String location;
  String date;

  SocialInfo_Container({required this.image, required this.title, required this.type, required this.location, required this.date});

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CommonBorderContainer(
          circular: 10,
          bordercolor: Color(0xffa9a9a9),
          backcolor: Colors.white,
          borderwidth: 0.3,
          width: width - 35,
          height: 70,
          widget: Row(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    Row(
                      children: [
                        Text(
                          '$type·',
                          style: TextStyle(
                              color: meetingtab_groupsubtitle_color,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CommonGreyIcon(Icons.location_on),
                        Text(
                          '$location·$date',
                          style: TextStyle(color: meetingtab_groupsubtitle_color),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
