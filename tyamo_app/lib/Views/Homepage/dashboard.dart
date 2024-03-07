import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Homepage/device_info/deviceInfo.dart';
import 'package:tyamo_app/Views/Widgets/homepage/features.dart';
import 'package:tyamo_app/Views/Widgets/homepage/feautreButton.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            'DASHBOARD',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text(
              'Your Friend',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 20),
          // Card Container or widget //
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                  // shape: CircleBorder(eccentricity: 10),
                  elevation: 10,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(children: [
                          CircularProfileAvatar(
                            '',
                            radius: 40,
                            borderColor: Colors.purple,
                            elevation: 10,
                            cacheImage: true,
                            backgroundColor: Colors.blue,
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Ali Ather',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    FittedBox(
                                      child: Text(
                                        'Texas, United States ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                      ),

                      /// 2nd Part of card //

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Row(children: [
                          Flexible(
                              child: Column(
                            children: [
                              Text(
                                'Status',
                                style: GoogleFonts.nunito(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Offline',
                                style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )
                            ],
                          )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            height: 45,
                            width: 3,
                            color: Colors.grey,
                          ),
                          Flexible(
                              child: Column(
                            children: [
                              Text(
                                'User Status',
                                style: GoogleFonts.nunito(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'N/A',
                                style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )
                            ],
                          )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            height: 45,
                            width: 3,
                            color: Colors.grey,
                          ),
                          Flexible(
                            child: Text(
                              'Mood N/A',
                              style: GoogleFonts.nunito(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 10)
                    ],
                  ))),
          SizedBox(height: 30),
          // Features //
          Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeviceInfoPage()));
                  },
                  child: FeatureButton(
                      text: 'Device info',
                      image: 'assets/icons/device.png',
                      colors: [Colors.green, Colors.greenAccent]),
                ),
                FeatureButton(
                    text: 'Gallery',
                    image: 'assets/icons/gallery.png',
                    colors: [
                      const Color.fromARGB(255, 247, 206, 85),
                      Color.fromARGB(255, 233, 185, 14)
                    ]),
                FeatureButton(
                    text: 'Moods',
                    image: 'assets/icons/mood.png',
                    colors: [Colors.purple, Colors.purpleAccent]),
              ],
            ),
          ),

          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text(
              'Your Friend',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Color.fromARGB(255, 126, 17, 227)),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Features(
                        text: 'Playlist',
                        icon: Icons.fast_forward,
                        color: Colors.red),
                    Features(
                        text: 'Location',
                        icon: Icons.location_on,
                        color: Colors.blue),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Features(
                        text: 'To-Do List',
                        icon: Icons.list_alt_outlined,
                        color: Colors.amber),
                    Features(
                        text: 'Diary',
                        icon: Icons.book_outlined,
                        color: Colors.red),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Features(
                        text: 'Surprise Notes',
                        icon: Icons.note_alt_outlined,
                        color: Colors.green),
                    Features(
                        text: 'Horoscopes',
                        icon: Icons.nightlight_sharp,
                        color: Colors.purple),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
