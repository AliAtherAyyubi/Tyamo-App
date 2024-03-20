import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Widgets/homepage/Device%20Info/batteryCard.dart';

class BatteryInfoPage extends StatelessWidget {
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
        // width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xfff5e6ad),
              Color(0xfff13c77),
            ],
          ),
        ),

        // first section ////////////

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Battery Status:',
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
            //// 1st container section //
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  margin: EdgeInsets.only(top: 10),
                  child: const Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Expanded(
                                  child: BatteryCard(
                                      title: 'Status',
                                      batteryStatus: 'Charging')),
                              Expanded(
                                  child: BatteryCard(
                                title: 'Charging Type',
                                batteryStatus: '-',
                              )),
                            ],
                          )),
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 8,
                                  child: BatteryCard(
                                    title: 'Charging Percentage',
                                    slider: true,
                                    intialValue: 45,
                                  )),
                              Expanded(
                                  flex: 5,
                                  child: BatteryCard(
                                    title: 'Temperature',
                                    batteryStatus: '35,000',
                                  )),
                            ],
                          )),
                      Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              Expanded(
                                  child: BatteryCard(
                                      title: 'Battery Health',
                                      batteryStatus: 'Good')),
                              Expanded(
                                  child: BatteryCard(
                                title: 'Battery Technology',
                                batteryStatus: 'Li-poly',
                              )),
                            ],
                          ))
                    ],
                  ),
                )),

            //// 2nd container of status section //

            Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'My Battery Status: ',
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey),
                          textAlign: TextAlign.left,
                          textScaleFactor: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /// 2nd section ////////
                      ///
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        // margin: EdgeInsets.only(top: 20),
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: BatteryCard(
                                            title: 'Status',
                                            batteryStatus: 'Charging',
                                            inverseClr: true)),
                                    Expanded(
                                        child: BatteryCard(
                                            title: 'Charging Type',
                                            batteryStatus: '-',
                                            inverseClr: true)),
                                  ],
                                )),
                            Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 8,
                                        child: BatteryCard(
                                          title: 'Charging Percentage',
                                          slider: true,
                                          intialValue: 94,
                                          inverseClr: true,
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: BatteryCard(
                                            title: 'Temperature',
                                            batteryStatus: '35,000',
                                            inverseClr: true)),
                                  ],
                                )),
                            Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: BatteryCard(
                                            title: 'Battery Health',
                                            batteryStatus: 'Good',
                                            inverseClr: true)),
                                    Expanded(
                                        child: BatteryCard(
                                            title: 'Battery Technology',
                                            batteryStatus: 'Li-poly',
                                            inverseClr: true)),
                                  ],
                                ))
                          ],
                        ),
                      )),
                    ],
                  ),
                )),
            // SizedBox(
            //   height: 50,
            // )
          ],
        ),
      ),
    );
  }
}
