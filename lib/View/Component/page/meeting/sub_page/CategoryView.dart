import 'package:flutter/material.dart';
import 'package:loginscreen/Model/meeting/filter/Enum.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';

import '../../../../../Constants/border.dart';
import '../../../../../Constants/colors.dart';


class CategoryView extends StatelessWidget {
  late List<Tab> tablist;
  
  CategoryView(){
    tablist = List<Tab>.generate(Category.values.length, (index){
      return Tab(
          child: Row(
            children: [
              Icon(Category.values[index].icon, size: 18,),
              SizedBox(width: 10,),
              Text(
                  Category.values[index].korean,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)
              ),
            ],
          )
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    return DefaultTabController(
      initialIndex: index,
      length: 10,
      child: Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle('카테고리'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: EdgeInsets.only(left: 10),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: tablist,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  indicatorColor: Colors.black,
                ),
              )),
        ),
        body: TabBarView(
          children: List.generate(Category.values.length, (index){
            return Text(Category.values[index].korean);
          }),
        ),
      ),
    );
  }
}
