import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
                        flex: 8,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.format_paint),
                                Text(
                                  '문화·예술',
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            )
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 8,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.sports_baseball),
                                Text('액티비티')
                              ],
                            )
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white70,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              )
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              Icon(Icons.fastfood),
                              Text('푸드·드링크')
                            ],
                          ),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white70,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              )
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              Icon(Icons.star),
                              Text('취미')
                            ],
                          ),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white70,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              )
                          ),
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              Icon(Icons.wine_bar),
                              Text('파티·소개팅')
                            ],
                          ),
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
                          flex: 8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.airplane_ticket_outlined),
                                Text('여행·동행')
                              ],
                            ),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.menu_book_outlined),
                                Text('자기계발')
                              ],
                            ),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.chat),
                                Text('동네·친목')
                              ],
                            ),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.wallet),
                                Text('재테크')
                              ],
                            ),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white70,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13)
                                )
                            ),
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Icon(Icons.sort_by_alpha),
                                Text('외국어')
                              ],
                            ),
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