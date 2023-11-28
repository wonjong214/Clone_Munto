import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/common_border_container.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import '../../atoms/arrow_circular_container.dart';

class OpenMeetingView extends StatelessWidget{
  String? _title;
  String? subTitle;
  Color? _color;
  FontWeight? _titleFont;
  FontWeight? subTitleFont;
  double? _arrowSize;

  OpenMeetingView({String? title = '', String? subtitle = '', Color? color = Colors.red, FontWeight? titlefont = FontWeight.w500,
  FontWeight? subtitlefont = FontWeight.w500, double? arrowsize = 25}){
    this._title = title;
    this.subTitle = subtitle;
    this._color = color;
    this._titleFont = titlefont;
    this.subTitleFont = subtitlefont;
    this._arrowSize = arrowsize;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context, rootNavigator: true).pushNamed('/meetingtype');
      },
      child: Container(
        height: 160,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: CommonBorderContainer(
          circular: 10,
          backColor: Colors.white,
          widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex:1),
                    CommonText(
                        text: _title!,
                      textSize: 22,
                        textColor: _color!,
                        fontWeight: _titleFont!,
                    ),
                    SizedBox(height: 20,),
                    CommonText(
                      text: subTitle!,
                      fontWeight: subTitleFont!,
                      maxLines: 2,
                      textSize: 16,
                      height: 1.2,
                    ),
                    Spacer(flex:1),
                  ],
                ),
                SizedBox(width: 50,),
                ArrowCircularContainer(_color!, _arrowSize!)
              ],
            )
        ),
      ),
    );
  }
}