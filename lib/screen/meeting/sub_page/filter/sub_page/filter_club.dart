import 'package:flutter/material.dart';
import '../../../../../../../constants/Enum.dart';
import '../../../../../widget/atoms/app_bar_title_text.dart';
import '../../../../../widget/atoms/common_text.dart';
import '../../../../../widget/atoms/korea_location_container.dart';
import '../../../../../widget/molecules/meeting/custom_radio_listile.dart';


class FilterClub extends StatefulWidget{
  @override
  State<FilterClub> createState() => FilterClubState();
}

class FilterClubState extends State<FilterClub> {
  int? categoryGroupValue;
  int? koreaLocationGroupValue;
  bool onlinevalue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppBarTitle('지역'),
                Spacer(),
                CommonText(
                  text: '온라인',
                  textColor: Color(0xffa9a9a9),
                  textSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 10,
                ),
                Theme(
                  data: ThemeData(
                    useMaterial3: false,
                  ).copyWith(
                    colorScheme: Theme.of(context)
                        .colorScheme
                        .copyWith(outline: Color(0xFFdbdbdb)),
                  ),
                  child: Switch(
                    inactiveThumbColor: Color(0xFFfafafa),
                    inactiveTrackColor: Color(0xFFdbdbdb),
                    activeColor: Colors.red,
                    activeTrackColor: Color(0xfff99a97),
                    value: onlinevalue,
                    onChanged: (value) {
                      setState(() {
                        onlinevalue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //지역 grid
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1.8 / 1,
                  children: List.generate(
                    KoreaLocation.values.length,
                        (index) {
                      return KoreaLocationContainer(
                        value: KoreaLocation.values[index].index,
                        groupValue: koreaLocationGroupValue,
                        text: KoreaLocation.values[index].korean,
                        onChanged: (value) {
                          setState(
                                () {
                              koreaLocationGroupValue = value;
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),


            SizedBox(
              height: 35,
            ),

            AppBarTitle('카테고리'),

            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int num = 0; num < 9; num += 2)
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: CustomRadioListtile(
                              value: Category.values[num].index,
                              groupValue: categoryGroupValue,
                              label: Category.values[num].korean,
                              onChanged: (value) {
                                setState(() {
                                  categoryGroupValue = value;
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
                              groupValue: categoryGroupValue,
                              label: Category.values[num + 1].korean,
                              onChanged: (value) {
                                setState(() {
                                  categoryGroupValue = value;
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

            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}