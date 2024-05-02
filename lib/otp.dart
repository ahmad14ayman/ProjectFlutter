import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/forget_password.dart';
import 'package:flutter_application_1/otp.dart';
import 'package:flutter_application_1/validation.dart';
import 'package:flutter_application_1/verfication.dart';

class OTP extends StatefulWidget {
  static const String routeName = "OTP";
  final String phone;
  const OTP(this.phone, {super.key});
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  late Timer _timer;
  int cnt = 30;
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (cnt > 0) {
          cnt--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  TextEditingController phonec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF3F0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 20,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("Login");
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffC35A56),
                    ),
                  ),
                  child: const Icon(Icons.arrow_forward),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),

            const SizedBox(
              height: 150,
            ),

            Text(
              widget.phone,
              style: const TextStyle(
                  color: Color(0xff2F190D),
                  fontSize: 40,
                  fontFamily: "Pacifico"),
            ),
            // const SizedBox(
            //   height: 50,
            // ),
            // Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(color: Colors.black),
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: TextField(
            //         inputFormatters: [LengthLimitingTextInputFormatter(1)],
            //         textAlign: TextAlign.center,
            //         style: TextStyle(fontSize: 30),
            //         decoration: InputDecoration(
            //             border: InputBorder.none,
            //             constraints: BoxConstraints(
            //                 maxWidth: MediaQuery.sizeOf(context).width / 7,
            //                 maxHeight: MediaQuery.sizeOf(context).width / 7)))),
            // const SizedBox(
            //   height: 50,
            // ),
            Container(
              // margin: EdgeInsets.only(right: 300.0),
              child: Text(
                "$cnt",
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: Color(0xff2F190D),
                    fontSize: 40,
                    fontFamily: "Pacifico"),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Spacer(
            //       flex: 2,
            //     ),
            //     const Text(
            //       "Dont`t Recive any code?",
            //       style: TextStyle(
            //           color: Colors.grey, fontWeight: FontWeight.bold),
            //     ),
            //     const Spacer(flex: 1),
            //     FilledButton(
            //       onPressed: () {},
            //       style: const ButtonStyle(
            //         backgroundColor: MaterialStatePropertyAll(
            //           Color.fromARGB(15, 255, 255, 255),
            //         ),
            //       ),
            //       child: const Text(
            //         "send again",
            //         style: TextStyle(
            //             color: Color.fromARGB(255, 255, 17, 0),
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     const Spacer(
            //       flex: 2,
            //     ),
            //   ],
            // ),
            // // Login Form
            // const SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 5),
              child: Container(
                width: 250,
                height: 40,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("verfication");
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffC35A56),
                    ),
                  ),
                  child: const Text(
                    "Confirm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            // **********
            // ***********
            const SizedBox(
              height: 20,
            ),
            // Email
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    // print("Dispose Phone");
    phonec.dispose();
    super.dispose();
  }
}
