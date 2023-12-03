import 'package:flutter/material.dart';
import 'package:loginscreen/model/meeting/recommend/member_review.dart';
import 'package:loginscreen/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../providers/member_review_provider.dart';
import '../../../../providers/resolution_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';

class ReviewView extends StatefulWidget {
  List<MemberReview>? memberReview;
  void Function(MemberReview memberReview) memberReivewChangeLike;
  bool isMemberReviewLoading;
  double width;

  ReviewView(
      {required this.memberReview,
      required this.memberReivewChangeLike,
      required this.isMemberReviewLoading,
      required this.width});

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  @override
  Widget build(BuildContext context) {
    double margin = 50;
    double imgWidth = (widget.width - margin) / 2;

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
                child: Column(children: [
                  widget.isMemberReviewLoading
                  ? CircularprogressContainer(
                    width: double.infinity,
                    height: (imgWidth + 110) * 2,
                    backColor: Colors.white60,
                    circular: 5,
                  )
                  : Column(
                      children: [
                        for (int num = 0; num < 3; num += 2)
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
                                              image: AssetImage(widget
                                                  .memberReview![num].image),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: (widget
                                                          .memberReview![num]
                                                          .like
                                                      ? Icon(Icons.favorite)
                                                      : Icon(Icons
                                                          .favorite_border)),
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    widget
                                                        .memberReivewChangeLike(
                                                            widget.memberReview![
                                                                num]);
                                                  }),
                                              Text(
                                                '${widget.memberReview![num].likeNum}',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CommonText(
                                      text: widget.memberReview![num].title,
                                      maxLines: 2,
                                      textSize: 15,
                                      height: 1.3,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                  width: imgWidth,
                                  height: imgWidth + 60,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: imgWidth,
                                        height: imgWidth,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(widget
                                                    .memberReview![num + 1]
                                                    .image),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                    icon: (widget
                                                            .memberReview![
                                                                num + 1]
                                                            .like
                                                        ? Icon(Icons.favorite)
                                                        : Icon(Icons
                                                            .favorite_border)),
                                                    color: Colors.white,
                                                    onPressed: () {
                                                      widget.memberReivewChangeLike(
                                                          widget.memberReview![
                                                              num + 1]);
                                                    }),
                                                Text(
                                                  '${widget.memberReview![num + 1].likeNum}',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            )),
                                      ),
                                      SizedBox(height: 10),
                                      CommonText(
                                        text:
                                            widget.memberReview![num + 1].title,
                                        maxLines: 2,
                                        textSize: 15,
                                        height: 1.3,
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  )),
                            ],
                          ),
                      ],
                    ),
            ])),
            SizedBox(
              height: 10,
            ),
            MoreButton(double.infinity)
          ],
        ));
  }
}
