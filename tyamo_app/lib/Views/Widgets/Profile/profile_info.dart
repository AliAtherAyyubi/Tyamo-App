import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInfo extends StatelessWidget {
  // const ProfileInfo({super.key});
  final Color color;
  final IconData icon;
  String? value;
  final String fieldname;

  ProfileInfo({
    required this.icon,
    required this.fieldname,
    this.value,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: Row(children: [
        Icon(icon, color: Colors.black, size: 25),
        SizedBox(width: 10),
        Text(
          fieldname,
          style: GoogleFonts.nunito(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value == null ? "Not currently set" : value!,
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: value == null ? Colors.red : Colors.black),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ]),
    );
  }
}
