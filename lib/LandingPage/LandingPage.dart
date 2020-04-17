import "package:flutter/material.dart";

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Beep Boop", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Are you qeueute enough to join?",
              style: TextStyle(
                fontSize: 16.0, color: Colors.white
                )
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Available Qeueute Rooms",
                  style: TextStyle(color: Colors.red)
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/animal-pet-cute-baby-50577.jpg",
          width: width
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width/2),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width),
        );
      }
    });
  }
}