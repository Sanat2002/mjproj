import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackButton extends StatefulWidget {
  final String text;
  final Function onclick;
  const BlackButton({super.key, required this.text, required this.onclick});

  @override
  State<BlackButton> createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        widget.onclick();
      },
      child: Container(
        height: size.height * .07,
        width: size.width * .8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: .5, color: Colors.grey.shade500)],
          color: Colors.black,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: Colors.white,
              fontSize: 18),
        ),
      ),
    );
  }
}
