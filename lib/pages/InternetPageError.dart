import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InternetErroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#242E38"),
      body: SafeArea(
        child: Column(
          children: [
            //For 404 image
            Container(
              margin: EdgeInsets.only(left: 32, top: 150),
              height: 250,
              width: 300,
              // color: Colors.white,
              child: Image.asset("assets/images/404.png"),
            ),

            //for Text
            Container(
              margin: EdgeInsets.only(top: 10, left: 18),
              padding: EdgeInsets.only(left: 28, top: 5),
              height: 100,
              width: 200,
              // color: Colors.white,
              child: const Text(
                "OOPs! ",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.red),
              ),
            ),

            //for Text
            Container(
              // margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 20),
              height: 70,
              width: 400,
              // color: Colors.white,
              child: Text(
                "Please Check Your Internet Connection",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: HexColor("#D9D9D9")),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
