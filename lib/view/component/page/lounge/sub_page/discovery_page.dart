import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/Recommend_Page/card_provider_vIew_model.dart';
import '../../../organisms/lounge/lounge_review.dart';

class DiscoveryPage extends StatefulWidget{
  late final ScrollController _controller;

  DiscoveryPage(ScrollController controller){
    _controller = controller;
  }

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<CardProvider>(context).fetchAndSetCardItems().then((_){
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
    var cardProvider = Provider.of<CardProvider>(context);
    return SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        children: [
          _isLoading ? const Center(child: CircularProgressIndicator())
              : Column(
            children: [
              for(int i =0; i< cardProvider.card.length; i++)
                LoungeReview(card: cardProvider.card[i],changeLike: (){cardProvider.changeLike(cardProvider.card[i]);},)
            ],
          ),
        ],
      ),
    );
  }
}