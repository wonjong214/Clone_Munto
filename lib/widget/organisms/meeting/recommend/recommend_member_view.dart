import 'package:flutter/material.dart';
import 'package:Clone_Munto/model/meeting/recommend/selected_host.dart';
import 'package:Clone_Munto/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/fontsize.dart';
import '../../../../providers/resolution_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/follow_button.dart';
import '../../../atoms/keyword_tag_container.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';

class RecommendMemberView extends StatefulWidget {
  List<SelectedHost>? selectedHost;
  Function selectedHostChangeFollow;
  bool isSelectedHostLoading;
  double width;
  
  RecommendMemberView({required this.selectedHost, required this.selectedHostChangeFollow,
    required this.isSelectedHostLoading, required this.width});

  @override
  State<RecommendMemberView> createState() => _RecommendMemberViewState();
}

class _RecommendMemberViewState extends State<RecommendMemberView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: '추천 멤버',
                textSize: meetingTabGroupTitleTextSize,
                fontWeight: meetingTabGroupTitleFontWeight,
              ),
              SizedBox(height: 10),
              CommonText(
                text: '팔로우하고 문토 대표 모임과 트렌드 소식 받아보기',
                textSize: meetingTabGroupSubTitleTextSize,
                textColor: meetingTabGroupSubTitleColor,
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    widget.isSelectedHostLoading ?
                        Row(
                          children: [
                            for(int i = 0; i < 3; i++)
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: CircularprogressContainer(
                                  width: widget.width - 70,
                                  height: widget.width - 70,
                                  circular: 20,
                                  backColor: Colors.white60,
                                ),
                              )
                          ],
                        )
                        : Row(
                      children: [
                        for(int i = 0; i < 3; i++)
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                      ),
                                      width: widget.width - 70,
                                      height: widget.width - 70,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 40,
                                                            backgroundImage: AssetImage(
                                                                widget.selectedHost![i].profileImage),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          SizedBox(
                                                            height: 80,
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment.spaceEvenly,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  widget.selectedHost![i].name,
                                                                  style: TextStyle(fontSize: 20),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Icon(Icons.check_circle_rounded,
                                                                        color: Colors.red,
                                                                        size: 15),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      '셀렉티드 호스트',
                                                                      style: TextStyle(
                                                                          color: Colors.red,
                                                                          fontSize: 15),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          GestureDetector(
                                                              onTap: (){
                                                                widget.selectedHostChangeFollow(widget.selectedHost![i]);
                                                              },
                                                              child: FollowButton(selected: widget.selectedHost![i].follow)
                                                          )
                                                        ],
                                                      )),
                                                  Text(
                                                    widget.selectedHost![i].selfIntroduction,
                                                    maxLines: 2,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(height: 1.5, fontSize: 15, ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      for (int num = 0; num < 4; num++)
                                                        if(num != 3)
                                                          GestureDetector(
                                                              onTap: (){
                                                                Navigator.of(context, rootNavigator: true).pushNamed(
                                                                  '/SearchKeyword_page',
                                                                  arguments: widget.selectedHost![i].tag[num],
                                                                );
                                                              },
                                                              child: Padding(
                                                                padding: const EdgeInsets.only(right: 10),
                                                                child: KeyWordTagContainer(text: widget.selectedHost![i].tag[num]),
                                                              )
                                                          )
                                                        else
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: KeyWordTagContainer(
                                                              text: '+${widget.selectedHost![i].tag.length - 4}',
                                                              border: Border.all(width: 1, color: Colors.grey),
                                                              backColor: Colors.transparent,
                                                              textColor: Colors.grey,
                                                            ),
                                                          )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  widget.selectedHost![i].image[0],
                                                  height: (widget.width - 70) / 3,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    child: Image.asset(
                                                      widget.selectedHost![i].image[1],
                                                      height: (widget.width - 70) / 3,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    child: Image.asset(
                                                      widget.selectedHost![i].image[2],
                                                      height: (widget.width - 70) / 3,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )))
                          )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        moreButtonMargin,
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: MoreButton(double.infinity),
        )
      ],
    );
  }
}
