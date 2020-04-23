import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "I'm Queuete!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "About Us",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        onPressed:(){},
                        child: Text(
                          "Learn How to Be Queuete",
                          style: TextStyle(color: Color.fromRGBO(215,63,9, 1.0)),
                        )
                  )
                ],
              )
            ]),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
                Text(
                  "I'm Queuete",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "About Us",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ]
        )
      ),
    );
  }
}
