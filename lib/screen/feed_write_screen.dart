import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/border.dart';
import '../widget/atoms/app_bar_title_text.dart';
import '../widget/atoms/diverder_container.dart';
import '../widget/molecules/feedwrite/additional_information_container.dart';
import '../widget/molecules/feedwrite/category_choice_container.dart';
import '../widget/molecules/feedwrite/feed_content_column.dart';

class FeedWriteScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBar_color,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appBarBottomBorder,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle('피드 쓰기', fontWeight: FontWeight.normal,),
        actions: [
          Text(
            '올리기',
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body:Column(
        children: [
          CategoryChoiceContainer(),
          thinDivider,
          FeedContentColumn(),
          thinDivider,
          AdditionalInformationContainer(),
          thinDivider,
        ],
      )
    );
  }
}