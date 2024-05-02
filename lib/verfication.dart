import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/controllers.dart';

class verfication extends StatefulWidget {
  bool first;
  bool last;
  TextEditingController controller;
  verfication(
      {required this.controller,
      required this.first,
      required this.last,
      super.key});

  @override
  State<verfication> createState() => _verficationState();
}

class _verficationState extends State<verfication> {
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
    var children = [
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
      // Heading Title
      Text(
        "Verfication",
        style: TextStyle(
            color: Color(0xff2F190D), fontSize: 40, fontFamily: "Pacifico"),
      ),
      //simi Heading Title

      // Login Form
      const SizedBox(
        height: 5,
      ),
      // Email
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextVerfication(controller: c1, first: true, last: false),
          TextVerfication(controller: c2, first: false, last: false),
          TextVerfication(controller: c3, first: false, last: false),
          TextVerfication(controller: c4, first: false, last: false),
          TextVerfication(controller: c5, first: false, last: false),
          TextVerfication(controller: c6, first: false, last: true),
        ],
      ),

      const SizedBox(
        height: 50,
      ),
      //SignUp
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          const Text(
            "Dont`t Recive any code?",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const Spacer(flex: 1),
          FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(15, 255, 255, 255),
              ),
            ),
            child: const Text(
              "send again",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 17, 0),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
      // Login Form
      const SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 5),
        child: Container(
          width: 250,
          height: 40,
          child: FilledButton(
            onPressed: () {},
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
    ];
    return Scaffold(
      backgroundColor: const Color(0xffFBF3F0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  @override
  void dispose() {
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    c5.dispose();
    c6.dispose();
    _timer.cancel();
    // print("Dispose Phone");
    phonec.dispose();
    super.dispose();
  }
}

class TextVerfication extends StatelessWidget {
  const TextVerfication({
    super.key,
    required TextEditingController controller,
    required bool first,
    required bool last,
  });

  get last => false;

  get first => false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
            onChanged: ((Value) {
              if (Value.isNotEmpty && last == false) {
                FocusScope.of(context).nextFocus();
              } else if (Value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            }),
            keyboardType: TextInputType.number,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
            decoration: InputDecoration(
                border: InputBorder.none,
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width / 7,
                    maxHeight: MediaQuery.sizeOf(context).width / 7))));
  }
}
