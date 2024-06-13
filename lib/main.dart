import 'package:flutter/material.dart';
import 'package:to_do_app_using_flutter_firebase/screen/landing_screen.dart';
import 'package:to_do_app_using_flutter_firebase/screen/login_screen.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatefulWidget {
  const MYAPP({super.key});

  @override
  State<MYAPP> createState() => _MYAPPState();
}

class _MYAPPState extends State<MYAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingScreen(),
    );
  }
}
