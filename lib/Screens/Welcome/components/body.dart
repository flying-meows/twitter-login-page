import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_login_page/Screens/Welcome/components/background.dart';
// import 'package:twitter_login_page/components/log_in_button.dart';
import 'package:twitter_login_page/components/rounded_button.dart';
// import 'package:twitter_login_page/components/sign_up_button.dart';
import 'package:twitter_login_page/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/twitter.svg",
              height: size.height * 0.05,
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "See what’s happening in the world right now",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Join Twitter today.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedButton(
              text: "Sign Up",
              textColor: kPrimaryLightColor,
              press: () {},
              size: null,
            ),
            RoundedButton(
              text: "Log In",
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {},
              size: null,
            ),
          ],
        ),
      ),
    );
  }
}
