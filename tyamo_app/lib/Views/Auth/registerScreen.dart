import 'dart:async';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo_app/Controller/user_controller.dart';
import 'package:tyamo_app/Views/Auth/Profile/profile_setup.dart';
import 'package:tyamo_app/Views/Auth/login.dart';
import 'package:tyamo_app/Views/Widgets/Auth/heading.dart';
import 'package:tyamo_app/Views/Widgets/Auth/textField.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo_app/Views/Widgets/Toast.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // object to register user//
  UserController user = UserController();
  final _formKey = GlobalKey<FormState>();
  // Calling function to register user //

  void registerUser() {
    user.RegisterUser(
      emailController.text,
      passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            title: Text(
              "Tyamo",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthHeading(
                        text1: 'Sign Up to tyamo',
                        text2: '& connect with people\n to enjoy',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        imagePath: 'assets/images/symbol.png',
                        imgSize: 50),
                    SizedBox(height: 50),

                    /// Email //
                    AuthTextField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              !value.toString().contains('@gmail.com')) {
                            return 'Please enter a valid email!';
                          }
                          return null;
                        },
                        controller: emailController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: false,
                        labelText: 'Email',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        icon: Icons.alternate_email),

                    SizedBox(
                      height: 20,
                    ),
                    //            for Password ///////
                    AuthTextField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be empty!';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters long!';
                          }

                          return null;
                        },
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        labelText: 'Password',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        icon: Icons.password),
                    SizedBox(height: 20),
                    //            For confirm Password ///////

                    AuthTextField(
                        validator: (value) => value!.isEmpty
                            ? 'Please confirm your password!'
                            : null,
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        labelText: 'Confirm Password',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        icon: Icons.lock_reset_sharp),
                    SizedBox(height: 30),
                    ////// Register Button ///////
                    Align(
                      alignment: Alignment.center,
                      child: GFButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // registerUser();
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ProfileSetupPage()));
                          }
                        },
                        text: 'Register',
                        size: 35,
                        fullWidthButton: true,
                        color: Color.fromARGB(255, 22, 207, 29),
                        elevation: 10,
                        borderShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        textStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),

                    SizedBox(height: 10),
                    Text(
                      'By signing up, you agree to our Terms of Service and Privacy Policy',
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 30),
                    //            Last Line of Login Page //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: LoginPage()));
                          },
                          child: Text('Sign in',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 2, 14, 250),
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1)),
                        )
                      ],
                    )
                  ]),
            )),
      ),
    );
  }
}
