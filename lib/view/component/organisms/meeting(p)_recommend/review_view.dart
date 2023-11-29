import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/review_provider_view_model.dart';
import '../../../../view_model/resolution_provider.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';


class ReviewView extends StatefulWidget{
  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ReviewProvider>(context).fetchAndSetReviewItems().then((_){
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
    var provider = Provider.of<ReviewProvider>(context);
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double imgWidth = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '함께한 멤버들의 후기',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            titleMargin,
            Container(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _isLoading ? const Center(child: CircularProgressIndicator())
                        : Column(
                      children: [
                        for(int num =0;num<3;num+=2)
                          Row(
                            children: [
                              SizedBox(
                                width: imgWidth,
                                height: imgWidth + 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: imgWidth,
                                      height: imgWidth,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(provider.review[num].image),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: (provider.review[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                                  color: Colors.white,
                                                  onPressed: () {provider.changeLike(provider.review[num]);}
                                              ),
                                              Text(
                                                '${provider.review[num].likeNum}',
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    CommonText(
                                      text: provider.review[num].title,
                                      maxLines: 2,
                                      textSize: 15,
                                      height: 1.3,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                  width: imgWidth,
                                  height: imgWidth + 60,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: imgWidth,
                                        height: imgWidth,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(provider.review[num + 1].image),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                    icon: (provider.review[num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                                    color: Colors.white,
                                                    onPressed: () {provider.changeLike(provider.review[num + 1]);}
                                                ),
                                                Text(
                                                  '${provider.review[num + 1].likeNum}',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      CommonText(
                                        text: provider.review[num + 1].title,
                                        maxLines: 2,
                                        textSize: 15,
                                        height: 1.3,
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  )
                              ),
                            ],
                          ),
                      ],
                    ),
                  ]
              )
          ),
          SizedBox(height: 10,),
          MoreButton(double.infinity)
        ],
      )
    );
  }
}