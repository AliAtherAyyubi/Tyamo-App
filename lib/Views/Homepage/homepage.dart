import 'package:flutter/material.dart';
import 'package:tyamo_app/Views/Auth/Profile/profile.dart';
import 'package:tyamo_app/Views/Auth/invitation/accept.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tyamo_app/Views/Homepage/dashboard.dart';
import 'package:tyamo_app/Views/Homepage/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        _changeTab(index);
      },
      scrollDirection: Axis.horizontal,
      children: [
        ProfilePage(),
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Dashboard(),
        ),
        Container(color: Colors.blue),
      ],
    );
  }

  _changeTab(int index) {
    setState(() {
      currentPage = index;
    });
  }

  List<IconData> icons = [
    Icons.person,
    FontAwesomeIcons.house,
    Icons.notifications,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const AcceptInvitationPage(),
                          type: PageTransitionType.rightToLeft));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset('assets/icons/chat.png',
                      height: 30, width: 30),
                ),
              )
            ],
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black, size: 30),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
            ),
            title: Container(
                width: 100,
                child: Image.asset(
                  'assets/images/logo2.png',
                  filterQuality: FilterQuality.high,
                )),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
          )),
      // Menu or drawer ///////
      drawer: const Drawer(child: DrawerPage()),
      // Body of this page //

      body: pageViewSection(),
      /////////
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeIndex: currentPage,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        onTap: (index) {
          _changeTab(index);
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linearToEaseOut);
        },
        icons: icons,
        iconSize: 30,
        gapWidth: 25,
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
      ),
    );
  }
}
