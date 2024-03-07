import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

class AuthHeading extends StatelessWidget {
  // const AuthHeading({super.key});
  final String text1;
  final String text2;
  final double fontSize;
  final FontWeight fontWeight;
  final String imagePath;
  final double imgSize;

  const AuthHeading(
      {required this.text1,
      required this.text2,
      required this.fontSize,
      required this.fontWeight,
      required this.imagePath,
      required this.imgSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Text(text1,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: fontWeight,
              )),
          Image.asset(
            imagePath,
            width: imgSize,
            height: imgSize,
            filterQuality: FilterQuality.high,
          )
        ]),
        Text(text2,
            style: GoogleFonts.poppins(
              fontSize: fontSize,
              fontWeight: fontWeight,
            )),
      ]),
    );
  }
}
