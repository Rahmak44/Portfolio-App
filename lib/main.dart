import 'package:flutter/material.dart';
import 'package:portfolio_test/experience.dart';
import 'package:portfolio_test/onboarding.dart';
import 'package:portfolio_test/skills.dart';
import 'package:portfolio_test/splash.dart';

import 'hobby.dart';
import 'login.dart';
import 'nav.dart';
import 'works.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}



