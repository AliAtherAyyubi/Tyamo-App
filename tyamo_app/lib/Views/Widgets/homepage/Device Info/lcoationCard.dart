import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationCard extends StatelessWidget {
  final String location;
  final String country;
  final bool inverseClr;

  LocationCard(
      {required this.location, required this.country, this.inverseClr = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 85.w,
          height: 15.h,
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: inverseClr ? Color(0xff7734DB) : Colors.white,
            child: Center(
              child: ListTile(
                leading: Icon(Icons.pin_drop,
                    color: inverseClr ? Colors.white : Colors.red, size: 50),
                title: Text(
                  location,
                  style: GoogleFonts.nunito(
                      color: inverseClr ? Colors.white : Color(0xff7734DB),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 40.w,
          height: 50,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: inverseClr ? Color(0xff7734DB) : Colors.white,
            child: Center(
              child: Text(
                country,
                style: GoogleFonts.nunito(
                    color: inverseClr ? Colors.white : Color(0xff7734DB),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
