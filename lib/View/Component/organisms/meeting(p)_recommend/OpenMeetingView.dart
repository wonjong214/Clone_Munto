import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../atoms/OpenMeetin_ArrowCircularContainer.dart';

class OpenMeetingView extends StatelessWidget{
  String? _title;
  String? _subtitle;
  Color? _color;
  FontWeight? _titlefont;
  FontWeight? _subtitlefont;
  double? _arrowsize;

  OpenMeetingView({String? title = '', String? subtitle = '', Color? color = Colors.red, FontWeight? titlefont = FontWeight.w500,
  FontWeight? subtitlefont = FontWeight.w500, double? arrowsize = 25}){
    this._title = title;
    this._subtitle = subtitle;
    this._color = color;
    this._titlefont = titlefont;
    this._subtitlefont = subtitlefont;
    this._arrowsize = arrowsize;
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
          backcolor: Colors.white,
          widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex:1),
                    Common_Text(
                        text: _title!,
                        textsize: 22,
                        textcolor: _color!,
                        fontWeight: _titlefont!,
                    ),
                    SizedBox(height: 20,),
                    Common_Text(
                      text: _subtitle!,
                      fontWeight: _subtitlefont!,
                      maxlines: 2,
                      textsize: 16,
                      height: 1.2,
                    ),
                    Spacer(flex:1),
                  ],
                ),
                SizedBox(width: 50,),
                OpenMeeting_ArrowCircularContainer(_color!, _arrowsize!)
              ],
            )
        ),
      ),
    );
  }
}