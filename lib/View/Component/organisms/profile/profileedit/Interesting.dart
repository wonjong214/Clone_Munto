import 'package:flutter/material.dart';
import '../../../../../Constants/fontsize.dart';
import '../../../atoms/common_text.dart';
import '../../../molecules/profile/activity_keyword_column.dart';
import '../../../molecules/profile/culture_keyword_column.dart';
import '../../../molecules/profile/food_keyword_column.dart';
import '../../../molecules/profile/friend_keyword_column.dart';
import '../../../molecules/profile/hoby_keyword_column.dart';
import '../../../molecules/profile/investment_keyword_column.dart';
import '../../../molecules/profile/language_keyword_column.dart';
import '../../../molecules/profile/party_keyword_column.dart';
import '../../../molecules/profile/travel_keyword_column.dart';

class Interesting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: '관심사',
          textSize: profiletab_edit_grouptitle_textsize,
          fontWeight: profiletab_edit_grouptitle_fontweight,
        ),
        SizedBox(height: 30,),
        CultureKeywordColumn(),
        SizedBox(height: 50,),
        ActivityKeywordColumn(),
        SizedBox(height: 50,),
        FoodKeywordColumn(),
        SizedBox(height: 50,),
        HobyKeywordColumn(),
        SizedBox(height: 50,),
        PartyKeywordColumn(),
        SizedBox(height: 50,),
        TravelKeywordColumn(),
        SizedBox(height: 50,),
        FriendKeywordColumn(),
        SizedBox(height: 50,),
        InvestmentKeywordColumn(),
        SizedBox(height: 50,),
        LanguageKeywordColumn(),
        SizedBox(height: 80,),
      ],
    );
  }
}