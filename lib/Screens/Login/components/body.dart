import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_login_page/Screens/Login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_login_page/Screens/Welcome/welcome_screen.dart';
import 'package:twitter_login_page/components/rounded_button.dart';
import 'package:twitter_login_page/constants.dart';
// import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  // final Widget child;
  const Body({
    Key key,
    // @required this.child,
  }) : super(key: key);

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/twitter.svg",
            height: size.height * 0.05,
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            'Log in to Twitter',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone, email, or username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),
          RoundedButton(
            text: "Log in",
            textColor: kSecondaryExExLightColor,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
          ),
          RichText(
            text: TextSpan(
              text: 'Forgot password?',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '  •  ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Sign up fo Twitter',
                ),
              ],
            ),
          ),
          // <https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget>
          // RichText(
          //   text: TextSpan(
          //     children: [
          //       TextSpan(
          //           // style: bodyTextStyle,
          //           // text: seeSourceFirst,
          //           ),
          //       TextSpan(
          //         style: bodyTextStyle.copyWith(
          //           color: kPrimaryColor,
          //         ),
          //         // text: repoText,
          //         recognizer: TapGestureRecognizer()
          //           ..onTap = () async {
          //             final url = 'https://github.com/flutter/gallery/';
          //             if (await canLaunch(url)) {
          //               await launch(
          //                 url,
          //                 forceSafariVC: false,
          //               );
          //             }
          //           },
          //       ),
          //       TextSpan(
          //         style: bodyTextStyle,
          //         text: seeSourceSecond,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
