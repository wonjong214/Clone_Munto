import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';


class Lounge_KeyWordTag_ScrollView extends StatelessWidget{
  List<String> tag;

  Lounge_KeyWordTag_ScrollView(this.tag){}

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
                child: KeyWordTag_Container(
                  text: tag[i],
                  padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
                  circular: 15,
                  border: Border.all(color: Colors.red, width: 1),
                  backcolor: Colors.white,
                  textcolor: Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }

}