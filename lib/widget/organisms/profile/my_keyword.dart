import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../screen/profile/profile_screen.dart';
import '../../atoms/keyword_tag_container.dart';

class MyKeyword extends StatefulWidget{
  bool tagFolded;
  List<String> tagList;

  MyKeyword({required this.tagList, required this.tagFolded});

  @override
  State<MyKeyword> createState() => _MyKeywordState();
}

class _MyKeywordState extends State<MyKeyword> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: List.generate(
        widget.tagFolded ? widget.tagList.length : 10,
            (index) {
          if (widget.tagFolded
              ? (index < widget.tagList.length - 1)
              : (index < 9))
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: KeyWordTagContainer(
                border: Border.all(width: 1, color: tagColor),
                text: widget.tagList[index],
              ),
            );
          else
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (widget.tagFolded == true)
                    widget.tagFolded = false;
                  else
                    widget.tagFolded = true;
                });
              },
              child: KeyWordTagContainer(
                text:
                widget.tagFolded ? '접기' : '+${widget.tagList.length - 9}',
                textColor: Colors.grey,
                border:
                Border.all(width: 1, color: Colors.grey),
                backColor: Colors.transparent,
              ),
            );
        },
      ),
    );
  }
}