import 'package:flutter/material.dart';
import 'package:twitter_login_page/Screens/Login/components/background.dart';

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
        children: <Widget>[],
      ),
    );
  }
}
