import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/profile/ActivityKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/CultureKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/FoodKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/FriendKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/HobyKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/InvestmentKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/LanguageKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/PartyKeyword_Column.dart';
import 'package:loginscreen/View/Component/molecules/profile/TravelKeyword_Column.dart';
import '../../../../../Constants/fontsize.dart';
import '../../../atoms/Common_Text.dart';

class Interesting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common_Text(
          text: '관심사',
          textsize: profiletab_edit_grouptitle_textsize,
          fontWeight: profiletab_edit_grouptitle_fontweight,
        ),
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