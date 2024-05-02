import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/auth.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/forget_password.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/login_in.dart';
// import 'package:flutter_application_1/mobile_dashboard.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:flutter_application_1/otp.dart';
import 'package:flutter_application_1/verfication.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case OTP.routeName:
            {
              final arg = settings.arguments as String;
              return MaterialPageRoute(builder: (builder) => OTP(arg));
            }
        }
      },
      routes: {
        "SignUp":(contect)=>SignUp(),
        "Login":(contect)=>Login(),
        "Forget":(contect)=> Forget(),
      },
    );
  }
}

void test(){
  print("We got into bugs related to firebase so we commented all related to firebase .. ");
}

