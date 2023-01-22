import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nep_blog/presentation/resources/assets_manager.dart';
import 'package:nep_blog/presentation/resources/color_manager.dart';
import 'package:nep_blog/presentation/resources/strings_manager.dart';
import 'package:nep_blog/presentation/widgets/social_card.dart';

import '../resources/routes_manager.dart';
import '../resources/size_config.dart';
import 'sign_in_controller/sign_in_controller.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final SignInController _login = Get.put(SignInController());
  String passBackData = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: ColorManager.kSecondaryColor,
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
                    size: 150,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: AppStrings.username,
                  hintText: AppStrings.enterUsername,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                controller: username,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppStrings.kNameNullError;
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => TextFormField(
                  obscureText: _login.isObsecure.value,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      labelText: AppStrings.password,
                      hintText: AppStrings.enterPassword,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(!_login.isObsecure.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          _login.changeObsecure();
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: ColorManager.kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world, you'd oftern call as server aor save the infomration in a database.
                    // Navigator.pushReplacementNamed(context, Routes.thirdScreen);
                  }
                },
                child: const Text(
                  AppStrings.signIn,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(
                  child: Text("Oops I forgot my password !",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signupScreen);
                  },
                  child: const SizedBox(
                    child: Text("Not a member? Sign up",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: ImageAssets.googleIcon,
                  press: () {},
                ),
                SocialCard(
                  icon: ImageAssets.faceBookIcon,
                  press: () {},
                ),
                SocialCard(
                  icon: ImageAssets.twitterIcon,
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
