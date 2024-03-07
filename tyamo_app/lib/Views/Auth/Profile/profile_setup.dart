import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Auth/invitation/invite.dart';
import 'package:tyamo_app/Views/Widgets/Auth/textField.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import 'package:page_transition/page_transition.dart';

class ProfileSetupPage extends StatefulWidget {
  @override
  State<ProfileSetupPage> createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends State<ProfileSetupPage> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  void changeColor() {
    if (isMale) {
      setState(() {
        isMale = false;
      });
    } else {
      setState(() {
        isMale = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tyamo",
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  CircleAvatar(
                    radius: 50,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(height: 50),
                  AuthTextField(
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      labelText: 'Full Name',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0,
                      icon: Icons.face),
                  SizedBox(height: 20),
                  AuthTextField(
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      labelText: 'Username',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0,
                      icon: Icons.person),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: changeColor,
                          child: Icon(
                            Icons.male,
                            size: 25,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isMale ? Colors.cyan : Colors.grey,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            elevation: 10,
                            shadowColor: Colors.black,
                          )),
                      ElevatedButton(
                          onPressed: changeColor,
                          child: Icon(
                            Icons.female,
                            size: 25,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isMale ? Colors.grey : Colors.purple,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            elevation: 10,
                            shadowColor: Colors.black,
                          )),
                    ],
                  ),
                  SizedBox(height: 80),
                  RoundedLoadingButton(
                    width: 400,
                    borderRadius: 10,
                    color: const Color.fromARGB(255, 64, 205, 137),
                    child: Text('Next',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    controller: _btnController,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: invitePage(),
                              type: PageTransitionType.fade));
                    },
                  ),
                ]),
          ),
        ));
  }
}
