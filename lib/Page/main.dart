import 'package:flutter/material.dart';
import 'package:loginscreen/View/meetingpage.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Review.dart';

import '../homepage.dart';
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
          ],
          builder: (context, child ){
            return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                initialRoute: '/meetingpage',
                routes: {
                  '/' : (context) => MyHomePage(),
                  '/meetingpage' : (context) => meetingpage()
                }
            );
          }
        );
  }
}


