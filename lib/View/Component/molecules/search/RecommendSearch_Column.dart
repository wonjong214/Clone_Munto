import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/Enum.dart';
import 'package:loginscreen/Constants/list.dart';

import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';

import '../../../../Constants/fontsize.dart';
import '../../atoms/Common_Text.dart';

class RecommendSearch_Column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Common_Text(
            text: '추천 검색어',
            textsize: search_grouptitle_textsize,
            fontWeight: search_grouptitle_fontweight,
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              for (int index = 0;
                  index < ExhibitionsKeyword.values.length;
                  index++)
                CommonBorderContainer(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
                  bordercolor: Colors.transparent,
                  backcolor: Color(0Xbbfeeaea),
                  widget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExhibitionsKeyword.values[index].image,
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        ExhibitionsKeyword.values[index].korean,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(runSpacing: 10, spacing: 10, children: [
            for (int index = 0; index < recommendkeyword.length; index++)
              CommonBorderContainer(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
                bordercolor: Colors.grey,
                widget: Text(
                  recommendkeyword[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
          ])
        ],
      ),
    );
  }
}
