
import 'package:flutter/material.dart';
import 'package:flutter_application_1/forget_password.dart';
import 'package:flutter_application_1/login_in.dart';
import 'package:flutter_application_1/sign_up.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login() ,
      routes: {
        "SignUp":(contect)=>SignUp(),
        "Login":(contect)=>Login(),
        "Forget":(contect)=>const Forget(),
      },
    );
  }
}

void test(){
  print("hello");
}