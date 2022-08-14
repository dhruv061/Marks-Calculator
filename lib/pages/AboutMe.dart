import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/InternetPageError.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class About_Me_Page extends StatefulWidget {
  @override
  State<About_Me_Page> createState() => _About_Me_PageState();
}

class _About_Me_PageState extends State<About_Me_Page> {
  //For Check Internet Connection Error
  //method for check internet conection
  void checkInternetConnection(
      ConnectivityResult internetConnection, String url) {
    // inside if condition is true then Internet is off otherwise is on
    if (internetConnection == ConnectivityResult.none) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InternetErroPage()));
    } else {
      //open all the link
      launchUrlString(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    //********************************************************************************* */
    return Scaffold(
      backgroundColor: HexColor("#242E38"),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //for title
            Container(
              margin: EdgeInsets.only(top: 25, left: 62),
              padding: EdgeInsets.only(top: 25, left: 25),
              height: 100,
              width: 280,
              // color: Colors.white,
              child: Text(
                "ABOUT ME",
                style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: HexColor("#E0FBFC"),
                    fontSize: 35),
                // textAlign: TextAlign.center,
              ),
            ),

            //for image
            Container(
              margin: EdgeInsets.only(left: 19),
              height: 162,
              width: 157,
              // color: Colors.white,
              child: Image.asset(
                "assets/images/About_me_profile.png",
                fit: BoxFit.cover,
              ),
            ),

            //for name
            Container(
              margin: EdgeInsets.only(left: 50),
              padding: EdgeInsets.only(top: 25, left: 25),
              height: 100,
              width: 280,
              // color: Colors.white,
              child: Text(
                "Dhruv Mavani",
                style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: HexColor("#98C1D9"),
                    fontSize: 30),
                // textAlign: TextAlign.center,
              ),
            ),

            //for description
            //for name
            Container(
              margin: EdgeInsets.only(left: 28),
              padding: EdgeInsets.only(left: 25),
              height: 300,
              width: 300,
              // color: Colors.white,
              child: Text(
                " I am Flutter Devloper. \n\nMaking carrier with Strong engineering professional skills with Bachlor of Engineering (BE) focused in Infomation technology from Saffrony Institute. \n\nlet’s grow together, let’s learn together.  ",
                style: TextStyle(
                    fontFamily: "RobotoSlab",
                    color: HexColor("#E0FBFC"),
                    fontSize: 18),
                // textAlign: TextAlign.center,
              ),
            ),

            //for Horizontal line
            Divider(
              color: HexColor("#E0FBFC"),
            ),

            //for icone
            Row(
              children: [
                //for Email
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  height: 60,
                  width: 60,
                  // color: Colors.white,
                  child: IconButton(
                      onPressed: () {
                        //open email

                        launchUrlString(
                            'mailto:mavanidhruv132@gmail.com?subject=Subject&body=How May I Help You?');
                      },
                      icon: Image.asset("assets/icons/Email_Icone.gif")),
                ),

                //for Linkdin
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 60,
                  width: 60,
                  // color: Colors.white,
                  child: IconButton(
                      onPressed: () async {
                        //for check internet Conection
                        final internetConnection =
                            await Connectivity().checkConnectivity();
                        checkInternetConnection(internetConnection,
                            "https://www.linkedin.com/in/dhruv-mavani-439a8a20a");
                      },
                      icon: Image.asset("assets/icons/linkedin_Icone.png")),
                ),

                //for Github
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 60,
                  width: 60,
                  // color: Colors.white,
                  child: IconButton(
                      onPressed: () async {
                        //for check internet Conection
                        final internetConnection =
                            await Connectivity().checkConnectivity();
                        checkInternetConnection(
                            internetConnection, "https://github.com/dhruv061");
                      },
                      icon: Image.asset("assets/icons/Github_Icone.png")),
                ),

                //for Privacy Policy
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  height: 60,
                  width: 60,
                  // color: Colors.red
                  child: IconButton(
                      onPressed: () async {
                        //for check internet Conection
                        final internetConnection =
                            await Connectivity().checkConnectivity();
                        checkInternetConnection(internetConnection,
                            "https://pages.flycricket.io/marks-calculator-0/privacy.html");
                      },
                      icon: Image.asset("assets/icons/privatepoilcy.png")),
                ),
              ],
            ),

            //after all icone some space
            SizedBox(height: 30),
          ],
        ),
      )),
    );
  }
}
