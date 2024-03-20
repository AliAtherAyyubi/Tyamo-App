import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingField extends StatelessWidget {
  final String title;
  final Widget button;
  const SettingField({required this.title, required this.button});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Flexible(
              child: Align(alignment: Alignment.centerRight, child: button))
        ],
      ),
    );
  }
}
