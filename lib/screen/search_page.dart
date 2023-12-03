import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../widget/molecules/search/current_search_column.dart';
import '../widget/molecules/search/recommend_search_column.dart';
import '../widget/organisms/meeting/recommend/exhibitions_view.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: TextFormField(
          style: TextStyle(
            fontSize: 15,
          ),
          cursorColor: Colors.grey.shade700,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            filled: true,
            fillColor: backGroundColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            prefixIcon: Icon(Icons.search, size: 25, color: Colors.grey,),
            hintText: '관심사, 태그, 지역명을 검색해 보세요',
            hintStyle: TextStyle(
              color: Colors.grey.shade600,
            ),
            isDense: true,
            contentPadding: EdgeInsets.all(10),
          ),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          CurrentSearchColumn(),
          SizedBox(height: 30,),
          RecommendSearchColumn(),
          //Expanded(child: ExhibitionsView()),
          SizedBox(height: 10,),
        ],
      )

    );
  }
}