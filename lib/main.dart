import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/component/page/create/choose_meeting_type.dart';
import 'view/component/page/feed_write_page.dart';
import 'view/component/page/meeting/sub_page/category_view.dart';
import 'view/component/page/profile/score.dart';
import 'view/component/page/profile/profile_edit.dart';
import 'view/component/page/profile/propensity_report_page.dart';
import 'view/component/page/profile/setting_page.dart';
import 'view/component/page/search_page.dart';
import 'view/component/page/searchkeyword/search_keyword_page.dart';
import 'view/main_view.dart';
import 'view_model/card_provider_vIew_model.dart';
import 'view_model/challenge_provider_view_model.dart';
import 'view_model/meeting_provider_view_model.dart';
import 'view_model/resolution_provider.dart';



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
              create: (_) => ChallengeProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => CardProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => MeetingProvider(),
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
                  '/setting' : (context) => SettingPage(),
                  '/score' : (context) => Score(),
                  '/profileedit' : (context) => ProfileEdit(),
                  '/FeedWrite_Page' : (context) => FeedWritePage(),
                  '/SearchKeyword_page' : (context) => SearchKeywordPage(),
                  '/Search_page' : (context) => SearchPage(),
                }
            );
          }
        );
  }
}


