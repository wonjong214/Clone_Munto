import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/follow_button.dart';
import 'package:loginscreen/view/component/atoms/keyword_tag_container.dart';
import 'package:loginscreen/view_model/Recommend_Page/SelectedHostProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/resolution_provider.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';

class SocialringHostView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    var selectedHostProvider = Provider.of<SelectedHost_Provider>(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: '셀렉티드 호스트',
                textSize: meetingtab_grouptitle_textsize,
                fontWeight: meetingtab_grouptitle_fontweight,
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
                                                            selectedHostProvider.selectedhost[i].profileImage),
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
                                                              selectedHostProvider.selectedhost[i].name,
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

                                                          selectedHostProvider.changeFollow(selectedHostProvider.selectedhost[i]);
                                                        },
                                                          child: FollowButton(selected: selectedHostProvider.selectedhost[i].follow)
                                                      )
                                                    ],
                                                  )),
                                              Text(
                                                selectedHostProvider.selectedhost[i].selfIntroduction,
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
                                                              arguments: selectedHostProvider.selectedhost[i].tag[num],
                                                            );
                                                          },
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: KeyWordTagContainer(text: selectedHostProvider.selectedhost[i].tag[num]),
                                                          )
                                                      )
                                                    else
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 10),
                                                        child: KeyWordTagContainer(
                                                          text: '+${selectedHostProvider.selectedhost[i].tag.length - 4}',
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
                                              selectedHostProvider.selectedhost[i].image[0],
                                              height: (width - 70) / 3,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  selectedHostProvider.selectedhost[i].image[1],
                                                  height: (width - 70) / 3,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  selectedHostProvider.selectedhost[i].image[2],
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
        moreButtonMargin,
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: MoreButton(double.infinity),
        )
      ],
    );
  }
}