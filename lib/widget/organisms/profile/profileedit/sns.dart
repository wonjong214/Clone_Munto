import 'package:flutter/material.dart';
import 'package:loginscreen/widget/atoms/sns_prefix_text.dart';
import '../../../../../constants/fontsize.dart';
import '../../../atoms/circle_icon.dart';
import '../../../atoms/common_text.dart';

class SNS extends StatelessWidget{
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: 'SNS',
          textSize: profileTabEditGrouTitleTextSize,
          fontWeight: profileTabEditGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CircleIcon(
                icon: Image.asset(
                  'assets/icons/instagram.png',
                  width: 13,
                  height: 13,
                ),
                width: 28,
                height: 28,
                border: Border.all(width: 1, color: Colors.grey),
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 20,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 17,
                ),
                cursorColor: Colors.grey.shade700,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xffa9a9a9), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xff616161), width: 1.0),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: SNSPrefixText('www.instagram.com/'),
                    //prefixText: 'www.instagram.com/',
                    hintText: '계정입력',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    )
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CircleIcon(
                icon: Image.asset(
                  'assets/icons/facebook-app-symbol.png',
                  width: 13,
                  height: 13,
                ),
                width: 28,
                height: 28,
                border: Border.all(width: 1, color: Colors.grey),
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 20,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 17,
                ),
                cursorColor: Colors.grey.shade700,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xffa9a9a9), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xff616161), width: 1.0),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: SNSPrefixText('www.facebook.com/'),
                    hintText: '계정입력',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    )
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CircleIcon(
                icon: Text(
                  'URL',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 9,
                    fontWeight: FontWeight.bold
                  ),
                ),
                width: 28,
                height: 28,
                border: Border.all(width: 1, color: Colors.grey),
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 20,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 17,
                ),
                cursorColor: Colors.grey.shade700,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xffa9a9a9), width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xff616161), width: 1.0),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'URL 전체 : 브런치, 블로그, 개인사이트 등',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    )
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}