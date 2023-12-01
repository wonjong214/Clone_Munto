import 'package:flutter/material.dart';
import 'package:loginscreen/providers/challenge_summary_provider.dart';
import 'package:loginscreen/providers/lounge_post_provider.dart';
import 'package:loginscreen/providers/meeting_summary_provider.dart';
import 'package:loginscreen/providers/member_review_provider.dart';
import 'package:loginscreen/providers/resolution_provider.dart';
import 'package:loginscreen/providers/selected_host_provider.dart';
import 'package:loginscreen/providers/socialring_contest_poster_provider.dart';
import 'package:loginscreen/screen/create/choose_meeting_type.dart';
import 'package:loginscreen/screen/feed_write_page.dart';
import 'package:loginscreen/screen/meeting/sub_page/category_view.dart';
import 'package:loginscreen/screen/profile/profile_edit.dart';
import 'package:loginscreen/screen/profile/propensity_report_page.dart';
import 'package:loginscreen/screen/profile/score.dart';
import 'package:loginscreen/screen/profile/setting_page.dart';
import 'package:loginscreen/screen/search_page.dart';
import 'package:loginscreen/screen/searchkeyword/search_keyword_page.dart';
import 'package:provider/provider.dart';
import 'screen/main_view.dart';




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
              create: (_) => ChallengeSummaryProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => LoungePostProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => MeetingSummaryProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => SelectedHostProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => MemberReviewProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => SocialringContestPosterProvider(),
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
                  '/meetingtype' : (context) => ChooseMeetingTypeScreen(),
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


