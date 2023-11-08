import 'package:flutter/material.dart';
import 'package:loginscreen/Model/meeting/filter/Enum.dart';
import 'package:loginscreen/View/Component/molecules/profile/ActivityKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/CultureKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/FoodKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/FriendKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/HobyKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/InvestmentKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/LanguageKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/PartyKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/TravelKeyword_Column.dart';

import '../../../atoms/ProfileGroupTitle_Text.dart';

class Interesting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileGroupTitle_Text(text: '이름'),
        SizedBox(height: 30,),
        CultureKeyword_Column(),
        SizedBox(height: 50,),
        ActivityKeyword_Column(),
        SizedBox(height: 50,),
        FoodKeyword_Column(),
        SizedBox(height: 50,),
        HobyKeyword(),
        SizedBox(height: 50,),
        PartyKeyword_Column(),
        SizedBox(height: 50,),
        TravelKeyword_Column(),
        SizedBox(height: 50,),
        FriendKeyword_Column(),
        SizedBox(height: 50,),
        InvestmentKeyword_Column(),
        SizedBox(height: 50,),
        LanguageKeyword_Column(),
        SizedBox(height: 80,),
      ],
    );
  }
}