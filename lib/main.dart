import 'package:flutter/material.dart';
import 'package:ratecourse/pages/home.dart';
import 'package:ratecourse/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
        "/login": (context) => Login(),
      },
    );
  }
}
