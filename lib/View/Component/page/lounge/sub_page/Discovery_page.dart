import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/CardProvider_VIewModel.dart';
import 'package:provider/provider.dart';

class Discovery_Page extends StatelessWidget{
  late final ScrollController _controller;

  Discovery_Page(ScrollController controller){
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    var card_provider = Provider.of<Card_Provider>(context);
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          for(int i =0; i< card_provider.card.length; i++)
          LoungeReview(card: card_provider.card[i],)
        ],
      ),
    );
  }
}