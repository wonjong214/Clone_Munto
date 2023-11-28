import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/circle_icon.dart';
import '../../../../../constants/fontsize.dart';
import '../../../atoms/common_text.dart';

class Name extends StatelessWidget{
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: '이름',
          textSize: profiletab_edit_grouptitle_textsize,
          fontWeight: profiletab_edit_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        TextFormField(
          controller: controller,
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
            suffixIcon: IconButton(
                onPressed: controller.clear,
                icon: CircleIcon(
                  width: 20,
                  height: 20,
                  icon: Icon(Icons.clear, size: 19, color: Colors.white,),
                  backgroundColor: Colors.grey.shade300,
                ),
            ),
            isDense: true,
            contentPadding: EdgeInsets.all(10),
            helperText: '이름은 14일 안에 한 번만 변경할 수 있어요',
            helperStyle: TextStyle(
              color: Colors.grey
            ),
            hintText: '이름을 입력해주세요',
            hintStyle: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            )
          ),
        ),
      ],
    );
  }
}