import 'package:flutter/material.dart';
import 'package:twitter_login_page/Screens/Welcome/animated_welcome_screen.dart';
import 'package:twitter_login_page/Screens/Welcome/welcome_screen.dart';
import 'package:twitter_login_page/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome To Twitter',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      //print('WelcomeScreen is here!');
      home: WelcomeScreen(),
      // home: LoginUI(),
    );
  }
}
