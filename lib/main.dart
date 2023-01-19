import 'package:flutter/material.dart';
import 'package:nep_blog/presentation/resources/routes_manager.dart';
import 'package:nep_blog/presentation/signin_screen/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.signinScreen,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Nep_Travel"),
        ),
        body: const SignInScreen());
    // body: const SignupPage());
    // body: const MyCustomForm());
    // body: const FirstScreen());
    // body: const Description());
    // body: const DetailPage());
  }
}
