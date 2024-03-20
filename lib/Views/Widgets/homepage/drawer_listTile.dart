import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:tyamo_app/Views/Auth/Profile/profile_setup.dart';

class DrawerTile extends StatelessWidget {
  final String name;
  final IconData icon;

  const DrawerTile({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        title: Row(children: [
          Icon(
            icon,
            size: 30,
            color: Color.fromARGB(255, 54, 220, 242),
          ),
          SizedBox(width: 15),
          Text(
            name,
            style: GoogleFonts.nunito(
                fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
          )
        ]),
      ),
    );
  }
}
