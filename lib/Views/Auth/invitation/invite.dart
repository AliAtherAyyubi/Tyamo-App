import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Auth/Profile/profile_setup.dart';
import 'package:tyamo_app/Views/Auth/invitation/accept.dart';
import 'package:tyamo_app/Views/Auth/invitation/cardTile.dart';
import 'package:tyamo_app/Views/Widgets/Auth/textField.dart';
import 'package:page_transition/page_transition.dart';

class invitePage extends StatelessWidget {
  const invitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: AcceptInvitationPage(),
                          type: PageTransitionType.rightToLeft));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(
                    Icons.person_outline,
                    size: 40,
                    color: Colors.purple,
                  ),
                ),
              )
            ],
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: Text(
              "Tyamo",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: Text(
                'Find your friends',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 155, 155, 155),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ], borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                      decoration: InputDecoration(
                          labelText: 'Search by exact username',
                          labelStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusColor: Colors.white,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(20)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    elevation: 10,
                    shadowColor: Colors.black,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              child: Image.asset('assets/images/invite.jpg'),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Invite a friend',
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
            SizedBox(
              height: 50,
            )
          ]),
        ),
      ),
    );
  }
}
