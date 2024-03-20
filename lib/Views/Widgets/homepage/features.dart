import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  // const Features({super.key});

  final String text;
  final IconData icon;
  final Color color;
  Features({required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(right: 30, bottom: 40),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(1, 2), blurRadius: 5)
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon, color: color, size: 35),
          SizedBox(width: 20),
          Text(
            text,
            style: GoogleFonts.nunito(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.black),
          )
        ]),
      ),
    );
  }
}
