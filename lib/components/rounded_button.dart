// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login_signup_screen/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolor;

  const RoundedButton({
     Key? key,
      required this.text,
       required this.press,
       this.color = kPrimaryColor,
        this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
