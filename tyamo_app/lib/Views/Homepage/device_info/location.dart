import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo_app/Views/Widgets/homepage/Device%20Info/lcoationCard.dart';

class LocationInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios,
                    color: Colors.black, size: 22),
              ),
            ),
            title: Container(
                width: 80,
                child: Image.asset(
                  'assets/images/logo2.png',
                  filterQuality: FilterQuality.high,
                )),
            elevation: 5,
            centerTitle: true,
            backgroundColor: Colors.white,
          )),

      ////   Body //
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffd4acfb),
              Color(0xff919bff),
            ],
          ),
        ),

        // first section ////////////

        child: Column(
          children: [
            ///  tittle of the page //
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Location Status:',
                style: GoogleFonts.nunito(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),

            //// 1st container section //
            Expanded(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      child: LocationCard(
                        location: 'North Loop West Freeway,, Houston, Texas',
                        country: 'United States',
                      )),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Last Updated: 1 min ago',
                      style: GoogleFonts.nunito(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            //// 2nd container of status section //

            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        // height: 100.h,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'My Location Status:',
                          style: GoogleFonts.nunito(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromARGB(255, 138, 138, 138)),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      LocationCard(
                        location: 'Alta Vista Drive,, Pasadena, Texas',
                        country: 'United States',
                        inverseClr: true,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
