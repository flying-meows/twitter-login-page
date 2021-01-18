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
        Text(
          "Welcome to Twitter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/icons/signup.svg",
          height: size.height * 0.35,
        ),
        Container(
          width: size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: kPrimaryLightColor,
                onPressed: () {},
                child: Text(
                  "Log In",
                  style: TextStyle(color: kPrimaryColor),
                )),
          ),
        )
      ],
    ));
  }
}
