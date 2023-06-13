import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_tracker/constants.dart';
import 'package:task_tracker/login.dart';

void main() {
  runApp (
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Login())
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: Center(
        child: Text(
          'Task Tracker',
          style: TextStyle(
            color: primary_theme,
            fontSize: 115,
            fontWeight: FontWeight.w900,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

