import 'package:flutter/material.dart';
import '../../../../../Constants/fontsize.dart';
import '../../../atoms/Common_Text.dart';

class SelfIntroduction extends StatefulWidget{
  @override
  State<SelfIntroduction> createState() => _SelfIntroductionState();
}

class _SelfIntroductionState extends State<SelfIntroduction> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Common_Text(
              text: '자기소개',
              textsize: profiletab_edit_grouptitle_textsize,
              fontWeight: profiletab_edit_grouptitle_fontweight,
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '${controller.text.length} / ',
                ),
                Text(
                  '180',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        TextFormField(
          controller: controller,
          buildCounter: (context,
              {required currentLength,
                required isFocused,
                maxLength}) => SizedBox(),
          maxLines: null,
          minLines: 5,
          maxLength: 180,
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
              hintText: '소개를 입력해 주세요',
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