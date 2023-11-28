import 'package:flutter/material.dart';
import 'package:loginscreen/Model/meeting/filter/age_slider_model.dart';
import 'package:loginscreen/view/component/atoms/app_bar_title_text.dart';
import 'package:loginscreen/view/component/atoms/custom_thirty_rounded_radio.dart';
import 'package:loginscreen/view/component/atoms/korea_location_container.dart';
import 'package:provider/provider.dart';
import '../../../../../../../constants/list.dart';
import '../../../../../../../constants/Enum.dart';
import '../../../../../../../view_model/resolution_provider.dart';
import '../../../../../atoms/common_text.dart';
import '../../../../../molecules/meeting/custom_radio_listile.dart';

class FilterSocial extends StatefulWidget {
  @override
  State<FilterSocial> createState() => _FilterSocialState();
}

class _FilterSocialState extends State<FilterSocial> {
  final List<bool> _selectedDuration = <bool>[false, false, false];
  List<String> locationList = List.empty(growable: true);
  int? dayGroupValue;
  int? quotaGroupValue;
  int? categoryGroupValue;
  int? typeGroupValue;
  int? koreaLocationGroupValue;
  AgeSliderModel ageSliderModel = new AgeSliderModel();
  RangeValues _rangeValues = const RangeValues(20, 50);

  _FilterSocialState() {
    init_locationList();
  }

  void init_locationList() {
    locationList.addAll(korealocation_list);
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
              isSelected: _selectedDuration,
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
                  for (int i = 0; i < _selectedDuration.length; i++) {
                    _selectedDuration[i] = i == index;
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
                  groupvalue: dayGroupValue,
                  label: Day.values[index].korean,
                  textsize: 17,
                  onChanged: (value) {
                    setState(() {
                      dayGroupValue = value;
                    });
                  },
                  trueBorderColor: Colors.red,
                  falseBorderColor: Colors.grey.shade300,
                  trueBackColor: Colors.red,
                  falseBackColor: Colors.transparent,
                  trueTextColor: Colors.white,
                  falseTextColor: Colors.black,
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
                  children: List.generate(locationList.length, (index) {
                    return KoreaLocationContainer(
                      value: index,
                      groupValue: koreaLocationGroupValue,
                      text: locationList[index],
                      onChanged: (value) {
                        setState(
                          () {
                            koreaLocationGroupValue = value;
                            if (locationList[index] == '서울')
                              locationList.insertAll(4, seoullocation_list);
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
            Row(
              children: [
                AppBarTitle('나이'),
                Spacer(),
                Text(
                  ageSliderModel.label!,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: ageSliderModel.activetrack,
                inactiveTrackColor: Colors.grey.shade300,
                thumbColor: ageSliderModel.thumbcolor,
                activeTickMarkColor: ageSliderModel.activetickhmark,
                inactiveTickMarkColor: Colors.grey.shade300,
                trackHeight: 7
              ),
              child: RangeSlider(
                values: _rangeValues,
                max: 50,
                min: 20,
                divisions: 6,
                onChanged: (value) {
                  setState(() {
                    if(value != RangeValues(20, 50)){
                      if((value.end.toInt() - value.start.toInt()) == 0)
                        return;
                      else
                      _rangeValues = value;
                      ageSliderModel.label = '${_rangeValues.start.round().toString()}~${_rangeValues.end.round().toString()}세';
                      ageSliderModel.activetrack = Colors.red;
                      ageSliderModel.thumbcolor = Colors.red;
                      ageSliderModel.activetickhmark = Colors.white;
                    }
                    else{
                      _rangeValues = value;
                      ageSliderModel.label = '누구나';
                      ageSliderModel.activetrack = Colors.grey.shade300;
                      ageSliderModel.thumbcolor = Colors.grey.shade300;
                      ageSliderModel.activetickhmark = Colors.grey.shade300;
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(agelabel.length, (index) => Text(agelabel[index])),
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
                          groupValue: quotaGroupValue,
                          label: Quota.three.korean,
                          onChanged: (value) {
                            setState(() {
                              quotaGroupValue = value;
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
                          groupValue: quotaGroupValue,
                          label: Quota.eleven.korean,
                          onChanged: (value) {
                            setState(() {
                              quotaGroupValue = value;
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
                  groupValue: quotaGroupValue,
                  label: Quota.thirtyone.korean,
                  onChanged: (value) {
                    setState(() {
                      quotaGroupValue = value;
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
                      groupValue: typeGroupValue,
                      label: Type.normal.korean,
                      onChanged: (value) {
                        setState(() {
                          typeGroupValue = value;
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
                      groupValue: typeGroupValue,
                      label: Type.club.korean,
                      onChanged: (value) {
                        setState(() {
                          typeGroupValue = value;
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
