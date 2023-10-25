import 'package:flutter/material.dart';
import 'package:loginscreen/View/MainView.dart';
import 'package:loginscreen/View/Component/page/meeting/MeetingView.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
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

                  '/main' : (context) => MainView()
                }
            );
          }
        );
  }
}


