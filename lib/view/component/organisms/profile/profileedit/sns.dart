import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/circle_icon.dart';
import '../../../../../constants/fontsize.dart';
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
          textSize: profiletab_edit_grouptitle_textsize,
          fontWeight: profiletab_edit_grouptitle_fontweight,
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
                    prefixText: 'www.instagram.com/',
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
                    prefixText: 'www.facebook.com/',
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