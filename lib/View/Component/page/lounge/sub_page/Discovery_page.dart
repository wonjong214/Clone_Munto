import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/CardProvider_VIewModel.dart';
import 'package:provider/provider.dart';

class Discovery_Page extends StatefulWidget{
  late final ScrollController _controller;

  Discovery_Page(ScrollController controller){
    _controller = controller;
  }

  @override
  State<Discovery_Page> createState() => _Discovery_PageState();
}

class _Discovery_PageState extends State<Discovery_Page> {
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
          _isLoading ? const Center(child: CircularProgressIndicator())
              : Column(
            children: [
              for(int i =0; i< card_provider.card.length; i++)
                LoungeReview(card: card_provider.card[i],change_like: (){card_provider.change_like(card_provider.card[i]);},)
            ],
          ),
        ],
      ),
    );
  }
}