import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Widgets/homepage/drawer_listTile.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Column(children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 20, top: 20),
                  child: CircularProfileAvatar(
                    '',
                    radius: 35,
                    borderWidth: 1,
                    borderColor: Colors.purple,
                    elevation: 10,
                    cacheImage: true,
                    backgroundColor: Colors.blue,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ali Ather',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('mayoayyubi@gmail.com',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                            letterSpacing: 1))
                  ],
                )
              ],
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20, top: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Premium',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      alignment: Alignment.bottomRight,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            )
          ]),
        ),
        Divider(),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: const Column(children: [
            DrawerTile(name: 'Subscription', icon: Icons.credit_card),
            DrawerTile(name: 'Setting', icon: Icons.settings),
            DrawerTile(name: 'Help', icon: Icons.help),
            DrawerTile(name: 'Feedback', icon: Icons.feedback),
            DrawerTile(name: 'Tell-others', icon: Icons.share_rounded),
            DrawerTile(name: 'Rate the app', icon: Icons.rate_review),
          ]),
        )),
        Divider(),
        const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Flexible(
                flex: 0, child: DrawerTile(name: 'Logout', icon: Icons.logout)))
      ],
    );
  }
}
