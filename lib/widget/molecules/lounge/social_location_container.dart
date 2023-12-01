import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../providers/resolution_provider.dart';
import '../../atoms/common_border_container.dart';

class SocialLocationContainer extends StatelessWidget {
  String location;
  String detailLocation;

  SocialLocationContainer({required this.location, required this.detailLocation});

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CommonBorderContainer(
          circular: 10,
          borderColor: Color(0xffa9a9a9),
          backColor: Colors.white,
          borderWidth: 0.3,
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
                      detailLocation,
                      maxLines: 1,
                      style: TextStyle(color: meetingTabGroupSubTitleColor),
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
