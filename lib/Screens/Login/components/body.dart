import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_login_page/Screens/Login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_login_page/Screens/Welcome/welcome_screen.dart';
import 'package:twitter_login_page/components/rounded_button.dart';
import 'package:twitter_login_page/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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

          // Widget Extracted Method
          RoundedCornerInputField(
            hintText: "Phone, email, or username",
            onChanged: (value) {},
            icon: Icons.person,
          ),
          RoundedCornerInputField(
            hintText: "Password",
            onChanged: (value) {},
            icon: Icons.lock,
          ),

          // Simple TextFormField Method
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

          // Simple
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
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Forgot password?',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = "https://histography.io/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                ),
                TextSpan(
                  text: '  •  ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Sign up for Twitter',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = "https://www.google.com/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                ),
              ],
            ),
          ),

          // <https://medium.com/codechai/how-to-create-hyperlink-for-text-in-flutter-ecf7d6019dfb>
          // RichText(
          //   text: TextSpan(
          //     style: DefaultTextStyle.of(context).style,
          //     children: <TextSpan>[
          //       TextSpan(
          //         text: "To learn more ",
          //       ),
          //       TextSpan(
          //         text: "Click here",
          //         recognizer: TapGestureRecognizer()
          //           ..onTap = () async {
          //             var url =
          //                 "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
          //             if (await canLaunch(url)) {
          //               await launch(url);
          //             } else {
          //               throw 'Could not launch $url';
          //             }
          //           },
          //       ),
          //     ],
          //   ),
          // ),

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

class RoundedCornerInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedCornerInputField({
    Key key,
    this.hintText,
    this.icon,
    // this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kSecondaryExExLightColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
