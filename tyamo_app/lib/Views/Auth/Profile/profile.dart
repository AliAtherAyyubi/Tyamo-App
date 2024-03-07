import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Auth/Profile/profile_setting.dart';
import 'package:tyamo_app/Views/Widgets/Profile/profile_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'MY PROFILE',
          style: GoogleFonts.nunito(
              fontSize: 23, fontWeight: FontWeight.w900, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: CircularProfileAvatar(
            'assets/images/profile.jpg',
            radius: 90,
            borderWidth: 1,
            borderColor: Colors.purple,
            elevation: 10,
            cacheImage: true,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Ali Ather',
          style: GoogleFonts.nunito(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '@ali_45',
          style: GoogleFonts.nunito(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingPage()));
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 45),
              // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.white,
              elevation: 10,
              side: BorderSide(color: Colors.purple, width: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text('Edit Profile Details',
              style: GoogleFonts.nunito(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.purple)),
        ),
        SizedBox(
          height: 20,
        ),
        ProfileInfo(
            color: Colors.grey.shade200,
            icon: Icons.alternate_email,
            value: 'mayoayybui@gmail.com',
            fieldname: 'Email'),
        ProfileInfo(
            color: Colors.transparent,
            icon: Icons.flag,
            value: 'Pakistan',
            fieldname: 'Country'),
        ProfileInfo(
            color: Colors.grey.shade200,
            icon: Icons.phone,
            fieldname: 'Phone Number'),
        more
            ? ProfileInfo(
                icon: Icons.female,
                fieldname: 'Gender',
                value: 'Male',
                color: Colors.transparent)
            : Container(),
        more
            ? ProfileInfo(
                icon: Icons.person,
                fieldname: 'Partner',
                value: 'Najam-ul-din',
                color: Colors.grey.shade200)
            : Container(),
        more
            ? ProfileInfo(
                icon: Icons.fingerprint,
                fieldname: 'UID',
                color: Colors.transparent)
            : Container(),
        more
            ? ProfileInfo(
                icon: Icons.watch_later_outlined,
                fieldname: 'Account Created',
                value: '12/12/2020',
                color: Colors.grey.shade200)
            : Container(),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              more ? more = false : more = true;
            });
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 48),
              // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.grey.shade200,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(more ? '- Show Less' : '+ Show More',
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.redAccent]),
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subscribed to',
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Text('Fre Package',
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                ],
              ),
            )),
            SizedBox(
              width: 30,
            ),
            Flexible(
                child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subscribed to',
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Text('Fre Package',
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                ],
              ),
            ))
          ],
        ),
        SizedBox(height: 150)
      ],
    ));
  }
}
