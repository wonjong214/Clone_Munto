import 'package:flutter/material.dart';

class Lounge_KeyWordTag_ScrollView extends StatelessWidget{
  List<Widget> _taglist;

  Lounge_KeyWordTag_ScrollView(this._taglist){}

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
            for(int i = 0; i < _taglist.length; i++)
              _taglist[i]
          ],
        ),
      ),
    );
  }

}