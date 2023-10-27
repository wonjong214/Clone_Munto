import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/lounge/LoungeReview.dart';

class Discovery_Page extends StatefulWidget{
  @override
  State<Discovery_Page> createState() => _Discovery_PageState();
}

class _Discovery_PageState extends State<Discovery_Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i =0; i< 8; i++)
          LoungeReview()
        ],
      ),
    );
  }
}