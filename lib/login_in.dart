import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/validation.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future log_in() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF3F0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            // Logo Image
            const CircleAvatar(
              backgroundColor: Color(0xffF6BC02),
              radius: 125,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/Logo/logo.jpg"),
                radius: 120,
              ),
            ),

            // Heading Title
            const Text(
              "Delicious Food",
              style: TextStyle(
                color: Color(0xff2F190D),
                fontSize: 40,
                fontFamily: "Pacifico",
              ),
            ),
            //simi Heading Title
            const Text(
              "welcome back",
              style: TextStyle(
                  color: Color(0xff2F190D),
                  fontSize: 25,
                  fontFamily: "Pacifico"),
            ),

            // Login Form
            // Email
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: MYValidation().emailValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: "email@address.com",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.email_outlined),
                  prefixIconColor: const Color(0xffC35A56),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD17B3D), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            // Password
            Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 16, right: 16, bottom: 16),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.name,
                validator: MYValidation().passValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock_person_outlined),
                  prefixIconColor: Color(0xffC35A56),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffD17B3D), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            // forget pass
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilledButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("Forget");
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(15, 255, 255, 255),
                      ),
                    ),
                    child: const Text(
                      "Forget Your Password",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            //Login
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: GestureDetector(
                onTap: log_in,
                child: Container(
                  width: 250,
                  height: 40,
                  child: FilledButton(
                    onPressed: () async {
                      Navigator.of(context).pushNamed("homePage");
                      // // formKey.currentState;
                      // UserCredential userCredential =
                      //     await FirebaseAuth.instance.signInAnonymously();
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffC35A56),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            // ***********
            const SizedBox(
              height: 80,
            ),
            // ***********
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  "Dont`t have an account?",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                const Spacer(flex: 1),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("SignUp");
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(15, 255, 255, 255),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 17, 0),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
