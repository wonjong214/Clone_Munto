import 'package:flutter/material.dart';
import 'package:loginscreen/model/meeting/recommend/member_review.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../providers/member_review_provider.dart';
import '../../../../providers/resolution_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';



class ReviewView extends StatefulWidget{
  List<MemberReview>? memberReview;
  void Function(MemberReview memberReview) memberReivewChangeLike;
  bool isMemberReviewLoading;

  ReviewView({required this.memberReview, required this.memberReivewChangeLike, required this.isMemberReviewLoading});

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  @override
  Widget build(BuildContext context) {
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
                  children: [
                    widget.isMemberReviewLoading ? const Center(child: CircularProgressIndicator())
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
                                              image: AssetImage(widget.memberReview![num].image),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: (widget.memberReview![num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                                  color: Colors.white,
                                                  onPressed: () {widget.memberReivewChangeLike(widget.memberReview![num]);}
                                              ),
                                              Text(
                                                '${widget.memberReview![num].likeNum}',
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
                                      text: widget.memberReview![num].title,
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
                                                image: AssetImage(widget.memberReview![num + 1].image),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                    icon: (widget.memberReview![num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                                    color: Colors.white,
                                                    onPressed: () {widget.memberReivewChangeLike(widget.memberReview![num + 1]);}
                                                ),
                                                Text(
                                                  '${widget.memberReview![num + 1].likeNum}',
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
                                        text: widget.memberReview![num + 1].title,
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