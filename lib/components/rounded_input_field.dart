import 'package:flutter/material.dart';
// import 'package:twitter_login_page/Screens/Login/components/body.dart';
import 'package:twitter_login_page/components/text_field_container.dart';
import 'package:twitter_login_page/constants.dart';

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
