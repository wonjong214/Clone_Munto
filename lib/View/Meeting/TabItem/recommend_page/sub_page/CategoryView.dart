import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Category_Button.dart';


class CategoryView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final ButtonStyle category_style = ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        disabledBackgroundColor: Colors.transparent,
        disabledForegroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white60,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
        )
    );

    return Container(
        margin: EdgeInsets.only(left:20, right: 20, bottom: 20),
        height: 200,
        width: double.infinity,
        child:Column(
            children:[
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {},
                          child: Category_Button(Icons.format_paint_outlined,'문화·예술'),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {},
                          child: Category_Button(Icons.sports_baseball,'액티비티'),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {},
                          child: Category_Button(Icons.fastfood,'푸드·드링크'),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {},
                          child: Category_Button(Icons.star,'취미'),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {},
                          child: Category_Button(Icons.wine_bar,'파티·소개팅'),
                        )
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: SizedBox()
              ),
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {},
                            child: Category_Button(Icons.airplane_ticket,'여행·동행'),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {},
                            child: Category_Button(Icons.menu_book_outlined,'자기계발'),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {},
                            child: Category_Button(Icons.chat,'동네·친목'),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {},
                            child: Category_Button(Icons.wallet,'재테크'),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {},
                            child: Category_Button(Icons.sort_by_alpha,'외국어'),
                          )
                      ),
                    ],
                  )
              )
            ]
        )
    );
  }
}