import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/CustomRadio.dart';
import 'package:loginscreen/View/Component/atoms/FilterBody_Text.dart';
import 'package:loginscreen/View/Component/atoms/ThirtyRoundedBorderContainer.dart';
import 'package:loginscreen/View/Component/molecules/meeting/CustomRadioListile.dart';

import '../../../../../../../Model/meeting/filter/SocialCategory_Model.dart';
import '../../../../../../../Model/meeting/filter/SocialQuota_Model.dart';

enum Quota {
  three("3~10명"),
  eleven("11~30명"),
  thirtyone("31~60명");

  final String korean;
  const Quota(this.korean);
}

enum Category {
  culture("문화·예술"),
  activity("액티비티"),
  food("푸드·드링크"),
  hoby("취미"),
  party("파티·소개팅"),
  travel("여행·동행"),
  study("자기계발"),
  friend("동네·친목"),
  investment("재테크"),
  language("외국어");


  final String korean;
  const Category(this.korean);
}

enum Type {
  normal("일반 소셜링"),
  club("클럽 소셜링");

  final String korean;
  const Type(this.korean);
}


class FilterSocial extends StatefulWidget {
  @override
  State<FilterSocial> createState() => _FilterSocialState();
}

class _FilterSocialState extends State<FilterSocial> {
  List<String> daylist = ['월', '화', '수', '목', '금', '토', '일'];

  int? quotagroupvalue;
  int? categorygroupvalue;
  int? typegroupvalue;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarTitle('기간'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0x55a9a9a9), width: 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                    height: 50,
                    child: FilterBody_Text(text:'이번 주',),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Color(0x55a9a9a9)),
                          bottom: BorderSide(width: 1, color: Color(0x55a9a9a9)),
                        ),
                    ),
                    height: 50,
                    child: FilterBody_Text(text: '다음 주',),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0x55a9a9a9), width: 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                    height: 50,
                    child: FilterBody_Text(text: '직접 입력',),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35,),

            AppBarTitle('요일'),

            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List<ThirtyRoundedBorderContainer>.generate(daylist.length, (index){
                  return ThirtyRoundedBorderContainer(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10,),
                    bordercolor: Color(0xffa9a9a9),
                    widget: FilterBody_Text(text: daylist[index],),
                  );
                }).toList()
            ),
            SizedBox(height: 35,),
            Row(
              children: [
                AppBarTitle('지역'),
                Spacer(),
                FilterBody_Text(text: '온라인', color: Color(0xffa9a9a9),),
                SizedBox(width: 10,),
                Theme(
                  data: ThemeData(
                    useMaterial3: false,
                  ).copyWith(
                    colorScheme: Theme.of(context).colorScheme.copyWith(outline: Color(0xFFdbdbdb)),
                  ),
                  child: Switch(
                    inactiveThumbColor: Color(0xFFfafafa),
                    inactiveTrackColor: Color(0xFFdbdbdb),
                    activeColor: Colors.red,
                    activeTrackColor: Color(0xfff99a97),
                    value: false,
                    onChanged: (value) {
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            //지역 grid
            SizedBox(height: 35,),
            AppBarTitle('정원'),
            /*SizedBox(
              height: 100,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: (1 / .2),
                crossAxisCount: 2,
                children: List<Widget>.generate(Quota.values.length, (index){
                  return Transform.scale(
                    scale: 1.2,
                    child: RadioListTile(
                        title: Text(Quota.values[index].korean),
                        value: Quota.values[index],
                        groupValue: quota,
                        onChanged: (value){
                          setState(() {
                            quota = value;
                          });
                        }
                    ),
                  );
                },
                ),
              ),
            )*/
            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: CustomRadioListtile(
                            value: Quota.three.index,
                            groupvalue: quotagroupvalue,
                            label: Quota.three.korean,
                            onChanged: (value){
                              setState(() {
                                quotagroupvalue = value;
                              });
                            },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: CustomRadioListtile(
                          value: Quota.eleven.index,
                          groupvalue: quotagroupvalue,
                          label: Quota.eleven.korean,
                          onChanged: (value){
                            setState(() {
                              quotagroupvalue = value;
                            });                      },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                CustomRadioListtile(
                  value: Quota.thirtyone.index,
                  groupvalue: quotagroupvalue,
                  label: Quota.thirtyone.korean,
                  onChanged: (value){
                    setState(() {
                      quotagroupvalue = value;
                    });                  },
                ),
              ],
            ),

            SizedBox(height: 35,),

            AppBarTitle('카테고리'),

            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(int num = 0; num < 9; num+=2)
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomRadioListtile(
                            value: Category.values[num].index,
                            groupvalue: categorygroupvalue,
                            label: Category.values[num].korean,
                            onChanged: (value){
                              setState(() {
                                categorygroupvalue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomRadioListtile(
                            value: Category.values[num + 1].index,
                            groupvalue: categorygroupvalue,
                            label: Category.values[num + 1].korean,
                            onChanged: (value){
                              setState(() {
                                categorygroupvalue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 35,),
            AppBarTitle('유형'),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: CustomRadioListtile(
                      value: Type.normal.index,
                      groupvalue: typegroupvalue,
                      label: Type.normal.korean,
                      onChanged: (value){
                        setState(() {
                          typegroupvalue = value;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: CustomRadioListtile(
                      value: Type.club.index,
                      groupvalue: typegroupvalue,
                      label: Type.club.korean,
                      onChanged: (value){
                        setState(() {
                          typegroupvalue = value;
                        });                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200,)
          ],
        ),
      ),
    );
  }
}
