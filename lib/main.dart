import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/page/FeedWrite_Page.dart';
import 'package:loginscreen/View/Component/page/Search_page.dart';
import 'package:loginscreen/View/Component/page/create/ChooseMeetingType.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/CategoryView.dart';
import 'package:loginscreen/View/Component/page/profile/ProfileEdit.dart';
import 'package:loginscreen/View/Component/page/profile/PropensityReport_page.dart';
import 'package:loginscreen/View/Component/page/profile/Setting_page.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/SearchKeyword_page.dart';
import 'package:loginscreen/View/MainView.dart';
import 'package:loginscreen/View/Component/page/meeting/MeetingView.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/CardProvider_VIewModel.dart';
import 'package:provider/provider.dart';

import 'View/Component/page/profile/Score.dart';
import 'ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';



void main() {
    runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers: [
            ChangeNotifierProvider<ResolutionProvider>(create: (BuildContext context) => ResolutionProvider()),
            ChangeNotifierProvider(
              create: (_) => Challenge_Provider(),
            ),
            ChangeNotifierProvider(
              create: (_) => Card_Provider(),
            ),
          ],
          builder: (context, child ){
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ButtonStyle(
                      splashFactory:NoSplash.splashFactory
                    )
                  )
                ),
                initialRoute: '/main',
                routes: {
                  '/main' : (context) => MainView(),
                  '/meetingtype' : (context) => ChooseMeetingType(),
                  '/categoryview' : (context) => CategoryView(),
                  '/propensityreport' : (context) => PropensityReport(),
                  '/setting' : (context) => Setting_page(),
                  '/score' : (context) => Score(),
                  '/profileedit' : (context) => ProfileEdit(),
                  '/FeedWrite_Page' : (context) => FeedWrite_Page(),
                  '/SearchKeyword_page' : (context) => SearchKeyword_page(),
                  '/Search_page' : (context) => Search_page(),
                }
            );
          }
        );
  }
}


