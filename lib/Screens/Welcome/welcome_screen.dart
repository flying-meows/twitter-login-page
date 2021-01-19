import 'package:flutter/material.dart';
import 'package:twitter_login_page/Screens/Welcome/components/body.dart';
import 'package:twitter_login_page/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryExExLightColor,
      body: Body(),
    );
  }
}
