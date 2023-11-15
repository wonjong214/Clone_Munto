import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import 'package:arc_progress_bar_new/arc_progress_bar_new.dart';

class MannerScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Common_Text(text: '매너 점수'),
              SizedBox(
                width: 2,
              ),
              GestureDetector(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: "",
                    barrierColor: Colors.transparent,
                    pageBuilder: (_, __, ___) {
                      return Stack(children: [
                        Positioned(
                          top: 150,
                          left: -28,
                          child: Dialog(
                              backgroundColor: Colors.white,
                              surfaceTintColor: Colors.transparent,
                              shadowColor: Colors.grey.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(width: 1, color: Color(0xffa9a9a9)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '매너 점수는 멤버들의 매너를 알 수 있는 점수로\n소셜링 만족도 평가 내역을 바탕으로 결정돼요.',
                                  style: TextStyle(height: 1.3),
                                ),
                              )),
                        ),
                      ]);
                    },
                  );
                },
                child: CircleIcon(
                  width: 12,
                  height: 12,
                  icon: Icon(Icons.question_mark, size: 9, color: Colors.grey,),
                  border: Border.all(width: 1, color: Colors.grey),
                  backgroundcolor: Colors.transparent,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            child: ArcProgressBar(
              percentage: 36.9,
              arcThickness: 15,
              strokeCap: StrokeCap.round,
              handleSize: 10,
              handleColor: Colors.white,
              innerPadding: 8,
              foregroundColor: Color(0xff78e358),
              backgroundColor: Color(0xfff4f4f4),
              centerWidget: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '36.9',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff78e358)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('3명의 만족도 평가 반영')
                      ],
                    )
                  ],
                ),
              ),
              bottomLeftWidget: Text(
                '0',
                style: TextStyle(
                  color: Colors.grey.shade300,
                ),
              ),
              bottomRightWidget: Text(
                '100',
                style: TextStyle(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CommonBorderContainer(
            circular: 10,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 60,
            backcolor: Colors.grey.shade100,
            widget: Row(
              children: [
                CircleIcon(
                  width: 40,
                  height: 40,
                  icon: Icon(Icons.email, size: 30, color: Colors.white),
                  backgroundcolor: Color(0xffdde9e6),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '매너 점수를 1점 더 올리고 싶다면?',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '친구에게 문토 알려주기',
                      style: TextStyle(fontSize: 16, height: 0),
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
