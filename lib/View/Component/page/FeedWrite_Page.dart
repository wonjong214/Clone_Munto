import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';

import '../../../Constants/border.dart';
import '../../../Constants/colors.dart';

class FeedWrite_Page extends StatelessWidget{
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
        title: AppBarTitle('피드 쓰기', fontweight: FontWeight.normal,),
        actions: [
          Text(
            '올리기',
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body:Column(
        children: [

        ],
      )
    );
  }
}