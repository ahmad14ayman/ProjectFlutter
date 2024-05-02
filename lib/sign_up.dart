import 'package:flutter/material.dart';
import 'package:flutter_application_1/validation.dart';
 // Ahmed Atef New Update
  final formKey = GlobalKey<FormState>();
class SignUp extends StatelessWidget {
 

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
              height: 50,
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
              "welcome",
              style: TextStyle(
                  color: Color(0xff2F190D),
                  fontSize: 25,
                  fontFamily: "Pacifico"),
            ),

            // Login Form
            const SizedBox(
              height: 50,
            ),
            // Username
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MYValidation().nameValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: decoration.copyWith(
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),

            // Password
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              child: TextFormField(
                obscureText: true,
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MYValidation().passValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: decoration.copyWith(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),

            // Phone
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                validator: MYValidation().phoneValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: decoration.copyWith(
                  hintText: "Phone",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),

            // Date of Birth
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 20,
                left: 20,
              ),
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.datetime,
                decoration: decoration.copyWith(
                  hintText: "Date of Birth",
                  prefixIcon: Icon(Icons.date_range),
                ),
              ),
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
                validator: MYValidation().emailValidate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.emailAddress,
                decoration: decoration.copyWith(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),

            //SignUp
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Container(
                key: formKey,
                width: 250,
                height: 40,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("homePage");
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffC35A56),
                    ),
                  ),
                  child: const Text(
                    "Sign Up",
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
    hintStyle: TextStyle(color: Colors.grey),
    prefixIconColor: Color(0xffC35A56),
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
