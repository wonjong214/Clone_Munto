import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import '../../../../Constants/Enum.dart';

class TagScroll_ScrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for(int i = 0; i < Tag.values.length; i++)
              GestureDetector(
                onTap: (){
                  Navigator.of(context, rootNavigator: true).pushNamed(
                    '/SearchKeyword_page',
                    arguments: Tag.values[i].korean,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CommonBorderContainer(
                    backcolor: Colors.white,
                    padding: EdgeInsets.only(left: 12, right: 12),
                    widget: Row(
                      children: [
                        Text(
                          '#${Tag.values[i].korean}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    height: 35,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}