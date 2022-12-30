import 'package:flutter/material.dart';
import 'package:rahove/home.dart';
import 'package:rahove/login.dart';
import 'package:rahove/signup.dart';
import 'package:rahove/splash.dart';
import 'package:rahove/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rahove',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Sign_up(),
        '/home': (context) => const Home(),
        '/user': (context) => const User(),
      },
    );
  }
}
