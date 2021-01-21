import 'package:flutter/material.dart';

class LoginSceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/images/top-right.png",
                  width: size.width * 0.3),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/bottom-left.png",
                  width: size.width * 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
