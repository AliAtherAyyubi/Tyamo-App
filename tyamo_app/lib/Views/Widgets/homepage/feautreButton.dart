import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureButton extends StatelessWidget {
  // FeatureButton({super.key});

  final String text;
  final String image;
  List<Color>? colors;

  FeatureButton({required this.text, required this.image, this.colors});
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(right: 20),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 10)
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors!)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          image,
          height: 40,
          width: 30,
          color: Colors.white,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.nunito(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
        )
      ]),
    ));
  }
}
