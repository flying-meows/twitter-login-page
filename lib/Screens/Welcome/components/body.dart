import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_login_page/Screens/Welcome/components/background.dart';
import 'package:twitter_login_page/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Welcome to Twitter"),
        SvgPicture.asset(
          "assets/icons/signup.svg",
          height: size.height * 0.45,
        )
      ],
    ));
  }
}
