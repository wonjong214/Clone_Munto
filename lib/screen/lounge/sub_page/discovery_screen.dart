import 'package:flutter/material.dart';
import 'package:loginscreen/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../providers/lounge_post_provider.dart';
import '../../../widget/organisms/lounge/lounge_review.dart';


class DiscoveryScreen extends StatefulWidget{
  late final ScrollController _controller;

  DiscoveryScreen(ScrollController controller){
    _controller = controller;
  }

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if(this.mounted){
        setState(() {
          _isLoading = true;
        });
      }

      Provider.of<LoungePostProvider>(context).fetchAndSetCardItems().then((_){
        if(this.mounted){
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var cardProvider = Provider.of<LoungePostProvider>(context);
    return _isLoading ?
    CircularprogressContainer(
      circular: 0,
    ) :
    SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        children: [
          for(int i =0; i< cardProvider.card.length; i++)
            LoungeReview(card: cardProvider.card[i],changeLike: (){cardProvider.changeLike(cardProvider.card[i]);},)
        ],
      ),
    );
  }


}