import 'package:flutter/material.dart';
import 'package:tyamo_app/Provider/one.dart';
import 'package:tyamo_app/Provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:tyamo_app/Views/Auth/splash_screen.dart';
import 'firebase_options.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MyData())],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tyamo App',
          home: SamplePage(),
        );
      }),
    );
  }
}
