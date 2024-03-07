import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo_app/Controller/user_controller.dart';
import 'package:tyamo_app/Views/Auth/Profile/profile_setup.dart';
import 'package:tyamo_app/Views/Auth/forgotPassword.dart';
import 'package:tyamo_app/Views/Auth/registerScreen.dart';
import 'package:tyamo_app/Views/Widgets/Auth/heading.dart';
import 'package:tyamo_app/Views/Widgets/Auth/textField.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  UserController userControl = UserController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(const Duration(seconds: 3), () {
      // _loginbtnController.success();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text("Tyamo",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 30),
              const AuthHeading(
                  text1: 'Sign in to tyamo',
                  text2: '& make friends \n to enjoy',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  imagePath: 'assets/images/symbol.png',
                  imgSize: 50),
              SizedBox(height: 50),
              AuthTextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  labelText: 'Email',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  icon: Icons.alternate_email),
              SizedBox(
                height: 20,
              ),
              //            for Password ///////
              AuthTextField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  labelText: 'Password',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  icon: Icons.password),
              SizedBox(height: 30),
              //////   Login Button  ///////
              RoundedLoadingButton(
                width: 80.w,
                height: 45,
                borderRadius: 10,
                color: const Color.fromARGB(255, 64, 205, 137),
                child: Text('Login', style: GoogleFonts.poppins(fontSize: 15)),
                controller: _loginbtnController,
                onPressed: () {
                  _doSomething();
                  userControl.SignIn(
                      emailController.text, passwordController.text);
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade,
                  //         child: ProfileSetupPage()));
                },
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: ForgotPasswordPage()));
                },
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.redAccent),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 40),
              //            Last Line of Login Page //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text('Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color.fromARGB(255, 2, 14, 250),
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              )
            ])),
      ),
    );
  }
}
