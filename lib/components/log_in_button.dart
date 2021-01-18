import 'package:flutter/material.dart';
import 'package:twitter_login_page/constants.dart';

class LogInButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const LogInButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryColor,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(20),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: new RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.blue, width: 1, style: BorderStyle.solid),
              borderRadius: new BorderRadius.circular(50),
            ),
            color: kPrimaryLightColor,
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
