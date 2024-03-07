import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo_app/Views/Homepage/device_info/battery.dart';
import 'package:tyamo_app/Views/Homepage/device_info/location.dart';
import 'package:tyamo_app/Views/Homepage/device_info/userStatus.dart';
import 'package:tyamo_app/Views/Widgets/homepage/Device%20Info/Devicebutton.dart';

class DeviceInfoPage extends StatelessWidget {
  const DeviceInfoPage({super.key});

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
        body: Column(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Device Info',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 2),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Device Info      ////// first part of box //
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: DeviceButton(
                              title: 'User Status',
                              color: [
                                Colors.blue,
                                const Color.fromARGB(255, 98, 231, 248)
                              ],
                              isGradientVertical: true,
                              page: UserStatusPage(),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: DeviceButton(
                              title: 'Battery',
                              color: [
                                Colors.amber.shade400,
                                const Color.fromARGB(255, 255, 128, 0)
                              ],
                              isGradientVertical: false,
                              page: BatteryInfoPage(),
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Expanded(
                          child: DeviceButton(
                            title: 'General',
                            color: [Color(0xff33F3CE), Colors.cyanAccent],
                            isGradientVertical: false,
                            page: Container(),
                          ),
                        ),
                      ],
                    ))
              ]),
            )),

            /// Second Section  .//////
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: DeviceButton(
                            title: 'Device Specs',
                            color: [Color(0xff09D996), Color(0xff4DFB95)],
                            isGradientVertical: false,
                            page: Container(),
                          ),
                        ),
                      ],
                    )),
                ////// Row second Section ///
                Expanded(
                    flex: 7,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: DeviceButton(
                              title: 'Location',
                              color: [Color(0xffB580F8), Color(0xff8F45F9)],
                              isGradientVertical: false,
                              page: LocationInfoPage(),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: DeviceButton(
                              title: 'Orientation',
                              color: [
                                Color(0xffEE6142),
                                Colors.orange.shade300
                              ],
                              isGradientVertical: true,
                              page: Container(
                                child: Text('Not yet made'),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ]),
            )),
          ],
        ));
  }
}
