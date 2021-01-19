// Flutter Login UI with Animation 2020
// <https://www.youtube.com/watch?v=PFUrGUweEow>
// Github <https://github.com/rishabhdavesar/ui/blob/master/lib/screen/loginUI.dart>

import 'package:flutter/material.dart';

import 'package:flare_flutter/flare_actor.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  TextEditingController email = TextEditingController();
  TextEditingController a = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Container(
            //     margin: EdgeInsets.only(top:h/15),
            height: h / 1.2,
            width: w,
            child: RotatedBox(
              quarterTurns: 0,
              child: FlareActor(
                'images/curve.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                // isPaused: x,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: w / 4, left: w / 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Back ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: h / 2),
              alignment: Alignment.center,
              child: ListView(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  box(email, "Email", TextInputType.text),
                  box(a, "Password", TextInputType.visiblePassword),
                  Container(
                    margin: EdgeInsets.only(top: h / 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Sign in",
                          style: TextStyle(
                              color: Color(0xff854bb0),
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          //  margin: EdgeInsets.only(top:h/20),

                          height: h / 12,
                          width: h / 12,

                          child: RaisedButton(
                            color: Color(0xff854bb0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            elevation: 3,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return MainScreen();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: h / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    // return SignUp();
                                  },
                                ),
                              );
                            },
                            child: Text("Sign up",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ))),
                        Text("Forgot password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            )),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

Widget box(TextEditingController x, String label, TextInputType t) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(5),
    child: Form(
      //   key: formkey,
      child: TextFormField(
        controller: x,
        cursorColor: Colors.black,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        keyboardType: t,
        maxLines: null,
        decoration: InputDecoration(
          hintText: label,
          labelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          hintStyle:
              TextStyle(color: Colors.grey[450], fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffac5fe3),
      body: Center(
        child: Text("Main Screen"),
      ),
    );
  }
}
