
import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/CustomThirtyRoundedRadio.dart';
import 'package:loginscreen/View/Component/atoms/FilterBody_Text.dart';
import 'package:loginscreen/View/Component/atoms/KoreaLocation_Container.dart';
import 'package:loginscreen/View/Component/molecules/meeting/CustomRadioListile.dart';
import 'package:provider/provider.dart';
import '../../../../../../../Constants/list.dart';
import '../../../../../../../Constants/Enum.dart';
import '../../../../../../../ViewModel//ResolutionProvider.dart';

class FilterSocial extends StatefulWidget {
  @override
  State<FilterSocial> createState() => _FilterSocialState();
}

class _FilterSocialState extends State<FilterSocial> {
  final List<bool> _selectedduration = <bool>[false, false, false];
  List<String> locationlist = List.empty(growable: true);
  int? daygroupvalue;
  int? quotagroupvalue;
  int? categorygroupvalue;
  int? typegroupvalue;
  int? korealocationgroupvalue;

  _FilterSocialState() {
    init_locationlist();
  }

  void init_locationlist(){
    /*locationlist.addAll(
      List.generate(
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
    );*/
    locationlist.addAll(korealocation_list);
  }

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
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

            ToggleButtons(
              children: duration,
              isSelected: _selectedduration,
              constraints:
                  BoxConstraints(minWidth: (width - 34) / 3, minHeight: 50),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              disabledColor: Colors.grey.shade200,
              selectedColor: Colors.red,
              color: Colors.black,
              fillColor: Colors.transparent,
              splashColor: Colors.transparent,
              selectedBorderColor: Colors.red,
              borderColor: Colors.grey.shade200,
              onPressed: (int index) {
                setState(() {
                  // The button that is tapped is set to true, and the others to false.
                  for (int i = 0; i < _selectedduration.length; i++) {
                    _selectedduration[i] = i == index;
                  }
                });
              },
            ),
            SizedBox(
              height: 35,
            ),

            AppBarTitle('요일'),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(Day.values.length, (index) {
                return CustomThirtyRoundedRadio(
                  value: Day.values[index].index,
                  groupvalue: daygroupvalue,
                  label: Day.values[index].korean,
                  onChanged: (value) {
                    setState(() {
                      daygroupvalue = value;
                    });
                  },
                );
              }),
            ),
            SizedBox(
              height: 35,
            ),
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
                  children: List.generate(locationlist.length, (index){
                    return KoreaLocation_Container(
                      value: index,
                      groupvalue: korealocationgroupvalue,
                      text: locationlist[index],
                      onChanged: (value) {
                        setState(
                              () {
                            korealocationgroupvalue = value;
                          },
                        );
                      },
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            AppBarTitle('정원'),
            SizedBox(
              height: 15,
            ),
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
                          onChanged: (value) {
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
                          onChanged: (value) {
                            setState(() {
                              quotagroupvalue = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomRadioListtile(
                  value: Quota.thirtyone.index,
                  groupvalue: quotagroupvalue,
                  label: Quota.thirtyone.korean,
                  onChanged: (value) {
                    setState(() {
                      quotagroupvalue = value;
                    });
                  },
                ),
              ],
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
              height: 35,
            ),
            AppBarTitle('유형'),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: CustomRadioListtile(
                      value: Type.normal.index,
                      groupvalue: typegroupvalue,
                      label: Type.normal.korean,
                      onChanged: (value) {
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
                      onChanged: (value) {
                        setState(() {
                          typegroupvalue = value;
                        });
                      },
                    ),
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
