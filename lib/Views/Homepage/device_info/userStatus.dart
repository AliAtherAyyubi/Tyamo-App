import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Widgets/homepage/Device%20Info/StatusCard.dart';

class UserStatusPage extends StatefulWidget {
  const UserStatusPage({super.key});

  @override
  State<UserStatusPage> createState() => _UserStatusPageState();
}

class _UserStatusPageState extends State<UserStatusPage> {
  List<String> status = [
    'EATING',
    'AWAY',
    'SLEEPING',
    'WORKING',
    'DRIVING',
    'AT HOME',
    'MEETING',
    'OUTDOOR',
    'DON\'T DISTURB',
  ];
  int selectedIndex = 0;
  String currentStatus = 'EATING';
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
      body: Container(
        // width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color.fromARGB(255, 117, 154, 241),
              Color.fromARGB(255, 57, 204, 241),
            ],
          ),
        ),

        // first section ////////////

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Najam Status:',
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.start,
                textScaleFactor: 1,
              ),
            ),

            //// main container of status section //
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                                flex: 8,
                                child: StatusCard1(
                                    fieldName: 'User Is', title: 'ONLINE')),
                            Expanded(
                                flex: 6,
                                child: StatusCard1(
                                    fieldName: 'Last App Action',
                                    title: '2 minutes ago')),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                              child: StatusCard1(
                                  fieldName: 'User Status', title: 'Driving')),
                        ],
                      ))
                ],
              ),
            )),

            Container(
              width: double.infinity,
              child: Text(
                'Last Updated: 1 min ago',
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
                textScaleFactor: 1,
              ),
            ),

            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      'User Status: ',
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1,
                    ),
                    Text(
                      currentStatus,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ]),

                  /// card section ////////
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.all(10),

                      /// List view Slider ///
                      child: ListView.builder(
                          itemCount: status.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentStatus = status[index];
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 20,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: index == selectedIndex
                                      ? Colors.blue
                                      : Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  status[index],
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }),
                    ),
                  )
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
