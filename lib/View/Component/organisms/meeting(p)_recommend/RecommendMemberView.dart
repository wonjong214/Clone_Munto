import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/fontsize.dart';
import '../../../../ViewModel/Recommend_Page/SelectedHostProvider_ViewModel.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/Follow_Button.dart';
import '../../atoms/KeyWordTag_Container.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';

class RecommendMemberView extends StatelessWidget {
  List<Widget> set_tag() {
    return [
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    var selectedhost_provider = Provider.of<SelectedHost_Provider>(context);

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Common_Text(
                text: '추천 멤버',
                textsize: meetingtab_grouptitle_textsize,
                fontWeight: meetingtab_grouptitle_fontweight,
              ),
              SizedBox(height: 10),
              Common_Text(
                text: '팔로우하고 문토 대표 모임과 트렌드 소식 받아보기',
                textsize: meetingtab_groupsubtitle_textsize,
                textcolor: meetingtab_groupsubtitle_color,
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                                  width: width - 70,
                                  height: width - 70,
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
                                                            selectedhost_provider.selectedhost[i].profileimage),
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
                                                              selectedhost_provider.selectedhost[i].name,
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

                                                            selectedhost_provider.change_follow(selectedhost_provider.selectedhost[i]);
                                                          },
                                                          child: Follow_Button(selected: selectedhost_provider.selectedhost[i].follow)
                                                      )
                                                    ],
                                                  )),
                                              Text(
                                                selectedhost_provider.selectedhost[i].selfintroduction,
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
                                                              arguments: selectedhost_provider.selectedhost[i].tag[num],
                                                            );
                                                          },
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: KeyWordTag_Container(text: selectedhost_provider.selectedhost[i].tag[num]),
                                                          )
                                                      )
                                                    else
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 10),
                                                        child: KeyWordTag_Container(
                                                          text: '+${selectedhost_provider.selectedhost[i].tag.length - 4}',
                                                          border: Border.all(width: 1, color: Colors.grey),
                                                          backcolor: Colors.transparent,
                                                          textcolor: Colors.grey,
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
                                              selectedhost_provider.selectedhost[i].image[0],
                                              height: (width - 70) / 3,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  selectedhost_provider.selectedhost[i].image[1],
                                                  height: (width - 70) / 3,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  selectedhost_provider.selectedhost[i].image[2],
                                                  height: (width - 70) / 3,
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
              ),
            ],
          ),
        ),
        morebutton_margin,
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: More_Button(double.infinity),
        )
      ],
    );
  }
}
