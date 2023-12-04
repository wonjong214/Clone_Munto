import 'package:flutter/material.dart';
import 'package:loginscreen/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../providers/lounge_post_provider.dart';
import '../../../widget/molecules/lounge/lounge_total_align_group.dart';
import '../../../widget/organisms/lounge/lounge_recommend_editor.dart';
import '../../../widget/organisms/lounge/lounge_review.dart';


class TotalPage extends StatefulWidget{
  late final ScrollController _controller;

  TotalPage(ScrollController controller){
    _controller = controller;
  }

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> with AutomaticKeepAliveClientMixin{
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
    CircularprogressContainer(circular: 0) :
    SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        children: [
          LoungeTotalAlignGroup(),
          SizedBox(height: 20,),
          LoungeReview(card: cardProvider.card[0], changeLike: (){cardProvider.changeLike(cardProvider.card[0]);},),
          LoungeReview(card: cardProvider.card[1], changeLike: (){cardProvider.changeLike(cardProvider.card[1]);},),
          SizedBox(height: 30,),
          LoungeRecommendEditor(),
          SizedBox(height: 30,),
          for(int i = 2; i < cardProvider.card.length; i++)
            LoungeReview(card: cardProvider.card[i],changeLike: (){cardProvider.changeLike(cardProvider.card[2]);},)
        ],
      ),
    );
  }


}