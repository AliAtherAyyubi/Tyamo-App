import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tyamo_app/Views/Auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
    // _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
            child: Container(
          height: 150,
          width: 150,
          child: Image.asset(
            'assets/images/logo2.png',
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
