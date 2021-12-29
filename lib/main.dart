import 'package:flutter/material.dart';
import 'package:flutter_magura/pages/home.dart';
import 'package:flutter_magura/pages/login.dart';
import 'package:flutter_magura/pages/routes.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoute.loginRoute,
      routes: {
        // "/": (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
      },
    );
  }
}
