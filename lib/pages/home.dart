import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final String name = "divya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate My Course"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome, $name!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
