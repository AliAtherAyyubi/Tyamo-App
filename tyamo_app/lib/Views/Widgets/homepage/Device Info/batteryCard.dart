import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BatteryCard extends StatelessWidget {
  final String title;
  final String? batteryStatus;
  final bool? inverseClr;
  final bool? slider;
  final double? intialValue;
  const BatteryCard(
      {required this.title,
      this.batteryStatus,
      this.slider = false,
      this.intialValue,
      this.inverseClr = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 10),
      child: Card(
          color: inverseClr == true ? Colors.orange : Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                slider == false
                    ? Text(
                        batteryStatus!,
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: inverseClr == true
                                ? Colors.white
                                : Colors.orange),
                        textAlign: TextAlign.center,
                      )
                    : SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                            animationEnabled: true,
                            customColors: CustomSliderColors(
                              trackColor: Colors.grey,
                              progressBarColor: inverseClr == true
                                  ? Colors.white
                                  : Colors.orange,
                            ),
                            infoProperties: InfoProperties(
                              mainLabelStyle: GoogleFonts.nunito(
                                  color: inverseClr == true
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900),
                            ),
                            size: 60,
                            customWidths:
                                CustomSliderWidths(progressBarWidth: 6)),
                        min: 10,
                        max: 100,
                        initialValue: intialValue!,
                      ),
              ],
            ),
          )),
    );
  }
}
