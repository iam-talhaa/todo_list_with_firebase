import 'package:flutter/material.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  var FullNameController = TextEditingController();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var ConfirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 40,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextFormField(
              controller: FullNameController,
              decoration: InputDecoration(
                  hintText: "FUll NAME ",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextFormField(
              controller: EmailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextFormField(
              controller: PasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextFormField(
              controller: ConfirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {
              var fullname = FullNameController.text.trim();
              var email = EmailController.text.trim();
              var password = PasswordController.text.trim();
              var confirmPassword = ConfirmPasswordController.text.trim();

              if (fullname.isEmpty ||
                  email.isEmpty ||
                  password.isEmpty ||
                  confirmPassword.isEmpty) {
                //Error  toast
                return;
              }
              if (password != confirmPassword) {
                //Error toast
              }
              if (password.length < 6) {
                //Error Toast

                return;
              }
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                'REGISTER',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
