import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:queuete_system/LandingPage/LandingPage.dart';
import 'package:queuete_system/Navbar/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I'm Queuete!",
      theme: ThemeData(
        fontFamily: "IBMPlexMono"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(215,63,9, 1.0),
                  Color.fromRGBO(61, 59, 59, 1.0)
            ])),
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[NavBar(), Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            )],
          ),
        ),
      ),
    );
  }
}
