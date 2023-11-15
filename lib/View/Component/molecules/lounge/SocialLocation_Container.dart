import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/CommonBorderContainer.dart';

class SocialLocation_Container extends StatelessWidget {
  String location;
  String detaillocation;

  SocialLocation_Container({required this.location, required this.detaillocation});

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    return Container(
      margin: EdgeInsets.only(right: 15),
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
                'assets/images/lounge/map.png',
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
                      location,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    Text(
                      detaillocation,
                      maxLines: 1,
                      style: TextStyle(color: subtitle_color),
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
