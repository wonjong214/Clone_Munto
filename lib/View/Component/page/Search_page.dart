import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_recommend/ExhibitionsView.dart';
import 'package:provider/provider.dart';
import '../../../Constants/colors.dart';
import '../../../ViewModel/Recommend_Page/Exhibitions.dart';
import '../molecules/search/current_search_column.dart';
import '../molecules/search/recommend_search_column.dart';

class Search_page extends StatelessWidget{
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
            fillColor: background_color,
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
          ChangeNotifierProvider(
            create: (context) => Exhibitions_Provider(),
            child: Expanded(child: ExhibitionsView()),
          ),
          SizedBox(height: 10,),
        ],
      )

    );
  }
}