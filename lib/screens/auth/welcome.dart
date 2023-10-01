import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:majorproject/screens/auth/login.dart';
import 'package:majorproject/screens/auth/signup.dart';
import 'package:majorproject/widget/blackButton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 228, 233),
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // SvgPicture.asset("assets/images/studentComp.svg",height: 200,width: 200,),
            Spacer(),
            Image.asset("assets/images/studentComp.png"),
            Spacer(),
            Text(
              "Welcome",
              style: TextStyle(
                  fontFamily: GoogleFonts.kronaOne().fontFamily,
                  letterSpacing: 1,
                  fontSize: 32),
            ),
            Spacer(),
            BlackButton(
              text: "Log In",
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Login())));
              },
            ),
            Spacer(),
            BlackButton(
              text: "Sign Up",
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignUp())));
              },
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
