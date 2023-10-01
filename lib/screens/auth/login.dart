// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:majorproject/screens/auth/signup.dart';
import 'package:majorproject/widget/blackButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 185, 228, 233),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Spacer(),
          Container(
            padding: EdgeInsets.only(left: 30),
            width: size.width,
            // alignment: Alignment.centerLeft,
            height: size.height * .25,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login Now",
                    style: TextStyle(
                        fontFamily: GoogleFonts.kronaOne().fontFamily,
                        letterSpacing: 1,
                        fontSize: 20,
                        color: Colors.white)),
                Text("Please Login to continue using our app.",
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.white))
              ],
            ),
          ),
      
          Spacer(),
          Container(
            width: size.width * .8,
            height: size.height * .07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white54,
                border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                    ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset("assets/images/google.png"),
                Spacer(),
                Text("Continue with Google",
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.black)),
                Spacer(),
              ],
            ),
          ),
          // Spacer(),
          SizedBox(height: 15,),
      
          Text("or",
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  letterSpacing: 1,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
      
          // Spacer(),
      SizedBox(height: 15,),
          SizedBox(
            width: size.width * .8,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: Colors.white54,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(14)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(14))),
            ),
          ),
      
          Spacer(),
      
          SizedBox(
            width: size.width * .8,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.white54,
                  filled: true,
                  suffixIcon: Icon(Icons.visibility_off),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(14)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(14))),
            ),
          ),
      
          TextButton(
              onPressed: () {},
              child: Text("Forget Password?",
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      letterSpacing: 1,
                      fontSize: 14,
                      color: Colors.black))),
      
          Spacer(flex: 2,),
      
          BlackButton(text: "Login", onclick: () {}),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Don't have an account?",
                style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    letterSpacing: 1,
                    fontSize: 18,
                    color: Colors.black)),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignUp())));
                },
                child: Text(" Sign Up",
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        letterSpacing: 1,
                        fontSize: 18,
                        color: Colors.white)))
          ]),
          Spacer(flex: 4,)
        ],
      ),
    );
  }
}
