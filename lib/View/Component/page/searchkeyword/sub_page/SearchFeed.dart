import 'package:flutter/material.dart';

class SearchFeed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      childAspectRatio: 1 / 1.2,
      children: [
        for(int i = 0; i < 15; i++)
        Container(
            child: Image.asset(
                'assets/images/recommend_page/Exhibitions/coffee.jpeg',
              fit: BoxFit.fill,
            ),
        ),
      ]
    );
  }
}