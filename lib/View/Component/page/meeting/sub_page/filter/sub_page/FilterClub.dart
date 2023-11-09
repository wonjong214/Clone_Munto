import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../../Constants/Enum.dart';
import '../../../../../../../ViewModel//ResolutionProvider.dart';
import '../../../../../atoms/AppBarTitle_Text.dart';
import '../../../../../atoms/FilterBody_Text.dart';
import '../../../../../atoms/KoreaLocation_Container.dart';
import '../../../../../molecules/meeting/CustomRadioListile.dart';

class FilterClub extends StatefulWidget{
  @override
  State<FilterClub> createState() => _FilterClubState();
}

class _FilterClubState extends State<FilterClub> {
  int? categorygroupvalue;
  int? korealocationgroupvalue;

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
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
                FilterBody_Text(
                  text: '온라인',
                  color: Color(0xffa9a9a9),
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
                    value: false,
                    onChanged: (value) {},
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
                      return KoreaLocation_Container(
                        value: KoreaLocation.values[index].index,
                        groupvalue: korealocationgroupvalue,
                        text: KoreaLocation.values[index].korean,
                        onChanged: (value) {
                          setState(
                                () {
                              korealocationgroupvalue = value;
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
                              groupvalue: categorygroupvalue,
                              label: Category.values[num].korean,
                              onChanged: (value) {
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
                              onChanged: (value) {
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

            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}