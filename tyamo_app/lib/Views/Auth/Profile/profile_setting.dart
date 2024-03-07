import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Widgets/Profile/pr_setting.dart';

class ProfileSettingPage extends StatelessWidget {
  const ProfileSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(30),
                bottomEnd: Radius.circular(30),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 40),
            child: Row(children: [
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Settings',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
          ////          main settings ///////
          Container(
            margin: EdgeInsets.only(top: 120, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  )
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(children: [
                  CircularProfileAvatar(
                    '',
                    radius: 25,
                    borderWidth: 1,
                    borderColor: Colors.purple,
                    elevation: 10,
                    cacheImage: true,
                    backgroundColor: Colors.blue,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Ali Ather',
                    style: GoogleFonts.nunito(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
              Divider(),
              Container(
                  padding: EdgeInsets.only(left: 60, top: 30, bottom: 10),
                  child: Text(
                    'Profile settings',
                    style: GoogleFonts.nunito(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  )),
              SettingField(
                  title: 'Edit Name',
                  button: Icon(Icons.arrow_forward_outlined)),

              SettingField(
                  title: 'Edit Phone Number',
                  button: Icon(Icons.arrow_forward_outlined)),

              SettingField(
                  title: 'Change Password',
                  button: Icon(Icons.arrow_forward_outlined)),

              SettingField(
                  title: 'Email Status',
                  button: Icon(Icons.arrow_forward_outlined)),

              Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: Text(
                    'Notification Settings',
                    style: GoogleFonts.nunito(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  )),

              SettingField(
                  title: 'Push Notifications',
                  button: GFToggle(
                    onChanged: (value) {},
                    value: true,
                    enabledTrackColor: Colors.greenAccent,
                    duration: const Duration(milliseconds: 200),
                  )),

              Container(
                  padding:
                      EdgeInsets.only(left: 60, right: 60, top: 15, bottom: 10),
                  child: Text(
                    'Background Updates',
                    style: GoogleFonts.nunito(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  )),

              SettingField(
                  title: 'Push Notifications',
                  button: Icon(Icons.arrow_forward_outlined)),
              SizedBox(
                height: 40,
              )

              /// end of setting column ///
            ]),
          ),
        ]),
      ),
    );
  }
}
