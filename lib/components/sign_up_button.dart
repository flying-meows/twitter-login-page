import 'package:flutter/material.dart';
import 'package:twitter_login_page/constants.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const SignUpButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryLightColor,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
