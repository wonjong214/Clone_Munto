import 'package:Clone_Munto/screen/lounge/sub_page/coment_screen.dart';
import 'package:flutter/material.dart';
import 'package:Clone_Munto/providers/challenge_summary_provider.dart';
import 'package:Clone_Munto/providers/club_news_provider.dart';
import 'package:Clone_Munto/providers/lounge_post_provider.dart';
import 'package:Clone_Munto/providers/meeting_summary_provider.dart';
import 'package:Clone_Munto/providers/member_review_provider.dart';
import 'package:Clone_Munto/providers/resolution_provider.dart';
import 'package:Clone_Munto/providers/selected_host_provider.dart';
import 'package:Clone_Munto/providers/socialring_contest_poster_provider.dart';
import 'package:Clone_Munto/screen/create/choose_meeting_type_screen.dart';
import 'package:Clone_Munto/screen/feed_write_screen.dart';
import 'package:Clone_Munto/screen/initialization_screen.dart';
import 'package:Clone_Munto/screen/main_screen.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/category_screen.dart';
import 'package:Clone_Munto/screen/profile/profile_edit_screen.dart';
import 'package:Clone_Munto/screen/profile/propensity_report_screen.dart';
import 'package:Clone_Munto/screen/profile/score_screen.dart';
import 'package:Clone_Munto/screen/profile/setting_screen.dart';
import 'package:Clone_Munto/screen/search_screen.dart';
import 'package:Clone_Munto/screen/searchkeyword/search_keyword_screen.dart';
import 'package:provider/provider.dart';





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
            ChangeNotifierProvider(
              create: (_) => ClubNewsProvider(),
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
                  '/main' : (context) => MainScreen(),
                  '/meetingtype' : (context) => ChooseMeetingTypeScreen(),
                  '/categoryview' : (context) => CategoryScreen(),
                  '/propensityreport' : (context) => PropensityReportScreen(),
                  '/setting' : (context) => SettingScreen(),
                  '/score' : (context) => ScoreScreen(),
                  '/profileedit' : (context) => ProfileEditScreen(),
                  '/FeedWrite_Page' : (context) => FeedWriteScreen(),
                  '/SearchKeyword_page' : (context) => SearchKeywordScreen(),
                  '/Search_page' : (context) => SearchScreen(),
                  '/Initialization' : (context) => InitializationScreen(),
                  '/comment' : (context) => CommentScreen()

                }
            );
          }
        );
  }
}


