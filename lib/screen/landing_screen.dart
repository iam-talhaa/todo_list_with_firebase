import 'package:flutter/material.dart';
import 'package:to_do_app_using_flutter_firebase/screen/login_screen.dart';

class landingScreen extends StatefulWidget {
  const landingScreen({super.key});

  @override
  State<landingScreen> createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlutterLogo(
            size: 50,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('START'))
        ],
      ),
    );
  }
}
