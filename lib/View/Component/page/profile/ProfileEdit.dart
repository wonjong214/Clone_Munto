import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/profile/Profile_Image.dart';
import 'package:loginscreen/View/Component/organisms/profile/profileedit/Interesting.dart';
import 'package:loginscreen/View/Component/organisms/profile/profileedit/Name.dart';
import 'package:loginscreen/View/Component/organisms/profile/profileedit/SNS.dart';
import 'package:loginscreen/View/Component/organisms/profile/profileedit/SelfIntroduction.dart';

import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBar_color,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appbarbottom_border,
        shadowColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Text(
            '저장',
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Profile_Image(
                        image: AssetImage(
                            'assets/images/recommend_page/Exhibitions/nacho.jpeg'),
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey.shade300,
                          size: 18,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 12, right: 12, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppBar_color),
                          child: Row(
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey.shade300,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '배경 설정',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade300),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Name(),
                  SizedBox(
                    height: 40,
                  ),
                  SelfIntroduction(),
                  SizedBox(
                    height: 40,
                  ),
                  SNS(),
                  SizedBox(
                    height: 40,
                  ),
                  Interesting(),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
