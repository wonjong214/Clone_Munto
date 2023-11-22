import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeRecommendEditor.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';
import 'package:loginscreen/View/Component/molecules/lounge/LoungeTotalAlignGroup.dart';
import 'package:provider/provider.dart';

import '../../../../../ViewModel/Recommend_Page/CardProvider_VIewModel.dart';

class Total_Page extends StatelessWidget{
  late final ScrollController _controller;

  Total_Page(ScrollController controller){
    _controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    var card_provider = Provider.of<Card_Provider>(context);
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          LoungeTotalAlignGroup(),
          SizedBox(height: 20,),

          LoungeReview(card: card_provider.card[0],),
          LoungeReview(card: card_provider.card[1],),
          SizedBox(height: 30,),
          LoungeRecommendEditor(),
          SizedBox(height: 30,),
          for(int i = 2; i < card_provider.card.length; i++)
            LoungeReview(card: card_provider.card[i],),
        ],
      ),
    );
  }
}