import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo_app/Views/Widgets/Auth/heading.dart';
import 'package:tyamo_app/Views/Widgets/Auth/textField.dart';

class ForgotPasswordPage extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
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
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              const AuthHeading(
                  text1: 'Forgot your password?',
                  text2: '',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  imagePath: 'assets/images/logo.png',
                  imgSize: 50),
              Container(
                height: 150,
                child: Image.asset(
                  'assets/images/forgotpassword.png',
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'To reset your password, please enter your email address below. We will send you a link to reset your password.',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  labelText: 'Email',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                  icon: Icons.alternate_email),
              SizedBox(height: 30),
              RoundedLoadingButton(
                width: double.infinity,
                borderRadius: 10,
                color: const Color.fromARGB(255, 64, 205, 137),
                child: Text('SEND',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2)),
                controller: _btnController,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
