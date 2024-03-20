import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Homepage/device_info/userStatus.dart';

class DeviceButton extends StatelessWidget {
  final String title;
  final List<Color> color;
  final bool isGradientVertical;
  final Widget page;
  DeviceButton(
      {required this.title,
      required this.color,
      required this.isGradientVertical,
      required this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      // height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            // spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
        gradient: LinearGradient(
            begin:
                isGradientVertical ? Alignment.topCenter : Alignment.centerLeft,
            end: isGradientVertical
                ? Alignment.bottomCenter
                : Alignment.bottomRight,
            colors: color),
      ),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Text(
            title,
            style: GoogleFonts.nunito(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              // elevation: 0,
              onSurface: Colors.transparent,
              disabledBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent)),
    );
  }
}
