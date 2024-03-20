import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusCard1 extends StatelessWidget {
  final String fieldName;
  final String title;

  StatusCard1({required this.fieldName, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30, right: 25),
        width: double.infinity,
        // height: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              fieldName,
              style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
