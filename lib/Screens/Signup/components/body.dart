import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_screen/Screens/Login/components/rounded_passwod_field.dart';
import 'package:login_signup_screen/Screens/Login/login_screen.dart';
import 'package:login_signup_screen/Screens/Signup/components/background.dart';
import 'package:login_signup_screen/Screens/Signup/components/or_divider.dart';
import 'package:login_signup_screen/components/already_have_an_account_check.dart';
import 'package:login_signup_screen/components/rounded_button.dart';
import 'package:login_signup_screen/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key, required Column child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            const Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
          ],
        ),
      ),
    );
  }
}
