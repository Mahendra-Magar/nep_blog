import 'package:flutter/material.dart';
import 'package:nep_blog/presentation/resources/strings_manager.dart';

import '../resources/routes_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNo = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  child: Icon(
                    Icons.person_rounded,
                    size: 100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mode),
                  labelText: AppStrings.fullname,
                  hintText: AppStrings.enterfullname,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                controller: fullname,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kFullNamelNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: AppStrings.email,
                  hintText: AppStrings.enterEmail,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kEmailNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  labelText: AppStrings.phoneNumber,
                  hintText: AppStrings.enterPhoneNumber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: phoneNo,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kPhoneNumberNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.pin_drop),
                  labelText: AppStrings.address,
                  hintText: AppStrings.enterAddress,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                controller: address,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kAddressNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppStrings.password,
                    hintText: AppStrings.enterPassword,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
                controller: password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kPassNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: AppStrings.confirmPassword,
                    hintText: AppStrings.enterPassword,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
                controller: confirmPassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kPassNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  //Validate returns true if the form is valid, or false otherwise.

                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world, you'd often call as server or save the infomration in a database.
                    Navigator.pushReplacementNamed(
                        context, Routes.signinScreen);
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: InkWell(
                  onTap: () => Navigator.pushReplacementNamed(
                      context, Routes.signinScreen),
                  child: const SizedBox(
                    child: Text("Already a member? Login ",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
