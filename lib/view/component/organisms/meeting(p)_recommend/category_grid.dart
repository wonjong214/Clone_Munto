import 'package:flutter/material.dart';
import 'package:loginscreen/constants/Enum.dart';
import '../../atoms/category_button.dart';


class CategoryGrid extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left:20, right: 20),
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
                          onTap: () {
                            /*Navigator.of(context,rootNavigator: true).pushNamed(
                              '/categoryview',
                              arguments: Category.culture.index
                            );*/
                            },
                          child: CategoryButton(Category.culture.icon,Category.culture.korean),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.of(context, rootNavigator: true).pushNamed(
                                '/categoryview',
                                arguments: Category.activity.index
                            );*/
                          },
                          child: CategoryButton(Category.activity.icon,Category.activity.korean),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.of(context, rootNavigator: true).pushNamed(
                                '/categoryview',
                                arguments: Category.food.index
                            );*/
                          },
                          child: CategoryButton(Category.food.icon, Category.food.korean),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.of(context, rootNavigator: true).pushNamed(
                                '/categoryview',
                                arguments: Category.hoby.index
                            );*/
                          },
                          child: CategoryButton(Category.hoby.icon, Category.hoby.korean),
                        )
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            /*Navigator.of(context, rootNavigator: true).pushNamed(
                                '/categoryview',
                                arguments: Category.party.index
                            );*/
                          },
                          child: CategoryButton(Category.party.icon, Category.party.korean),
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
                            onTap: () {
                              /*Navigator.of(context, rootNavigator: true).pushNamed(
                                  '/categoryview',
                                  arguments: Category.travel.index
                              );*/
                            },
                            child: CategoryButton(Category.travel.icon, Category.travel.korean),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {
                              /*Navigator.of(context, rootNavigator: true).pushNamed(
                                  '/categoryview',
                                  arguments: Category.study.index
                              );*/
                            },
                            child: CategoryButton(Category.study.icon, Category.study.korean),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {
                              /*Navigator.of(context, rootNavigator: true).pushNamed(
                                  '/categoryview',
                                  arguments: Category.friend.index
                              );*/
                            },
                            child: CategoryButton(Category.friend.icon, Category.friend.korean),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {
                              /*Navigator.of(context, rootNavigator: true).pushNamed(
                                  '/categoryview',
                                  arguments: Category.investment.index
                              );*/
                            },
                            child: CategoryButton(Category.investment.icon, Category.investment.korean),
                          )
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 9,
                          child: GestureDetector(
                            onTap: () {
                              /*Navigator.of(context, rootNavigator: true).pushNamed(
                                  '/categoryview',
                                  arguments: Category.language.index
                              );*/
                            },
                            child: CategoryButton(Category.language.icon, Category.language.korean),
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