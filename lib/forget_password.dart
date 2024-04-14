import 'package:flutter/material.dart';
import 'package:flutter_application_1/validation.dart';

class Forget extends StatelessWidget {
  const Forget({super.key});

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
              height: 170,
            ),
            // Heading Title

            //simi Heading Title
            const Text(
              "Reset Password",
              style: TextStyle(
                  color: Color(0xff2F190D),
                  fontSize: 40,
                  fontFamily: "Pacifico"),
            ),

            // Login Form
            const SizedBox(
              height: 50,
            ),
            // Email
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              child: TextFormField(
                controller: TextEditingController(),
                validator: MYValidation().phoneValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.phone,
                decoration: decoration.copyWith(
                  hintText: "Phone",
                  prefixIcon: const Icon(Icons.phone),
                ),
              ),
            ),

            //SignUp
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
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
                    "Send Code",
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

            const Text(
              "by clicking sign up you agree to the following",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              " terms and conditions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

InputDecoration decoration = InputDecoration(
    hintStyle: const TextStyle(color: Colors.grey),
    prefixIconColor: const Color(0xffC35A56),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffD17B3D), width: 2),
      borderRadius: BorderRadius.circular(30),
    ),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(30)));
