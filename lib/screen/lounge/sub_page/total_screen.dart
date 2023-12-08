import 'package:flutter/material.dart';
import 'package:loginscreen/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../providers/lounge_post_provider.dart';
import '../../../widget/molecules/lounge/lounge_total_align_group.dart';
import '../../../widget/organisms/lounge/lounge_recommend_editor.dart';
import '../../../widget/organisms/lounge/lounge_review.dart';


class TotalScreen extends StatefulWidget{
  late final ScrollController _controller;

  TotalScreen(ScrollController controller){
    _controller = controller;
  }

  @override
  State<TotalScreen> createState() => _TotalScreenState();
}

class _TotalScreenState extends State<TotalScreen> with AutomaticKeepAliveClientMixin{
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

      Provider.of<LoungePostProvider>(context).fetchAndSetLoungePostItems().then((_){
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
    var loungePostProvider = Provider.of<LoungePostProvider>(context);
    return _isLoading ?
    CircularprogressContainer(circular: 0) :
    SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        children: [
          LoungeTotalAlignGroup(),
          SizedBox(height: 20,),
          LoungeReview(loungePost: loungePostProvider.loungePost[0], changeLike: (){loungePostProvider.changeLike(loungePostProvider.loungePost[0]);},),
          LoungeReview(loungePost: loungePostProvider.loungePost[1], changeLike: (){loungePostProvider.changeLike(loungePostProvider.loungePost[1]);},),
          SizedBox(height: 30,),
          LoungeRecommendEditor(),
          SizedBox(height: 30,),
          for(int i = 2; i < loungePostProvider.loungePost.length; i++)
            LoungeReview(loungePost: loungePostProvider.loungePost[i],changeLike: (){loungePostProvider.changeLike(loungePostProvider.loungePost[2]);},)
        ],
      ),
    );
  }


}