import 'package:flutter/material.dart';
import '../../atoms/keyword_tag_container.dart';


class LoungeKeyWordTagScrollView extends StatelessWidget{
  List<String> tag;

  LoungeKeyWordTagScrollView(this.tag){}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for(int i = 0; i < tag.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: KeyWordTagContainer(
                  text: tag[i],
                  padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
                  circular: 15,
                  border: Border.all(color: Colors.red, width: 1),
                  backColor: Colors.white,
                  textColor: Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }

}