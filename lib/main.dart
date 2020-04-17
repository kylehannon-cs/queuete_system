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
      title: 'Queuete System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
                  Color.fromRGBO(210, 247, 136, 1.0),
                  Color.fromRGBO(110, 163, 5, 1.0)
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
