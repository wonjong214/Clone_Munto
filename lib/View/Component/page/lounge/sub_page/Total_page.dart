import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeRecommendEditor.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeTotalAlignGroup.dart';

class Total_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoungeTotalAlignGroup(),
          SizedBox(height: 20,),
          LoungeReview(),
          LoungeReview(),
          SizedBox(height: 30,),
          LoungeRecommendEditor(),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}