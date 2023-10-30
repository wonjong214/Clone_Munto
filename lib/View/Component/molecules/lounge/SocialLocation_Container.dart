import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/TenRoundedBorderContainer_Container.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel//ResolutionProvider.dart';

class SocialLocation_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TenRoundedBorderContainer(
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
                      '주소',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    Text(
                      '주소',
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
