import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeRecommendEditor.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';
import 'package:loginscreen/View/Component/molecules/lounge/LoungeTotalAlignGroup.dart';
import 'package:provider/provider.dart';

import '../../../../../ViewModel/Recommend_Page/CardProvider_VIewModel.dart';

class Total_Page extends StatefulWidget{
  late final ScrollController _controller;

  Total_Page(ScrollController controller){
    _controller = controller;
  }

  @override
  State<Total_Page> createState() => _Total_PageState();
}

class _Total_PageState extends State<Total_Page> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Card_Provider>(context).fetchAndSetCardItems().then((_){
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var card_provider = Provider.of<Card_Provider>(context);
    return SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        children: [
          LoungeTotalAlignGroup(),
          SizedBox(height: 20,),

          _isLoading ? const Center(child: CircularProgressIndicator())
              : LoungeReview(card: card_provider.card[0], change_like: (){card_provider.change_like(card_provider.card[0]);},),
          _isLoading ? const Center(child: CircularProgressIndicator())
              : LoungeReview(card: card_provider.card[1], change_like: (){card_provider.change_like(card_provider.card[1]);},),
          SizedBox(height: 30,),
          LoungeRecommendEditor(),
          SizedBox(height: 30,),
          _isLoading ? const Center(child: CircularProgressIndicator())
              : Column(
            children: [
              for(int i = 2; i < card_provider.card.length; i++)
                LoungeReview(card: card_provider.card[i],change_like: (){card_provider.change_like(card_provider.card[2]);},),
            ],
          )
        ],
      ),
    );
  }
}