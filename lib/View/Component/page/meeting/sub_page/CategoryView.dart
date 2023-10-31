import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';

import '../../../../../Constants/colors.dart';

class CategoryView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          title: Row(
            children: [
              Align(
                alignment: Alignment.center,
                child: AppBarTitle('카테고리'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.list)
                  ),
                  SizedBox(width: 20,),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search)
                  )
                ],
              )
            ],
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('카테고리')
              ],
            ),
          ),
        )
    );
  }
}