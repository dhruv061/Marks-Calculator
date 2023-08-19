import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/CGPA_Result.dart';
import 'package:gtu_marks/pages/HomePage.dart';
import 'package:hexcolor/hexcolor.dart';

class CGPA_Page extends StatefulWidget {
  @override
  State<CGPA_Page> createState() => _CGPA_PageState();
}

class _CGPA_PageState extends State<CGPA_Page> {
  //for storing data
  TextEditingController EarnedGrade_Controller = TextEditingController();
  TextEditingController EarnedCreadit_Controller = TextEditingController();

  String EarnedGreadPoint = ' ';
  String EarnedCreaditPoint = ' ';

  //share all 2 data into CGPAResult Page
  sendItem(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CGPAResult(
            getEarnedGreadPoint: EarnedGreadPoint,
            getEarnedCreaditPoint: EarnedCreaditPoint)));
  }

//for form validation
  //for Earned Grade Ponint
  GlobalKey<FormState> _formKeyEarnedGradePoint = GlobalKey();

  //for Earned Creadit Point
  GlobalKey<FormState> _formKeyEarnedCreaditPoint = GlobalKey();

  //********************************************************************************************** */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#3D5A80"),

      //for multiple container
      body: SafeArea(
        //here we use listview because we use on property of keybordDismiss Behavior
        child: ListView(
          //this property help for when we scroll that time keybord hide and we not get overflow Screen error
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

          children: [
            //we use Gesture detector because when we tap screenn keybord is disable (not get overlflow)
            GestureDetector(
              //when user tap on screen tahat time keybord disumissed
              //this is use for avoiding overflow screen
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //for heading
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 9),
                      padding: EdgeInsets.only(top: 28, left: 42),
                      height: 100,
                      width: 326,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: HexColor("#98C1D9"),

                        //for circular border radius for box
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),

                      child: Text(
                        "Calculate CGPA",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            color: HexColor("#242E38"),
                            fontSize: 35),
                        // textAlign: TextAlign.center,
                      ),
                    ),

                    //for image
                    Container(
                      margin: EdgeInsets.only(left: 19, top: 20),
                      // height: 300,
                      // width: 180,
                      // color: Colors.white,
                      child: Image.asset(
                        "assets/images/CGPA.png",
                        height: 300,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    //for Question -1 --> Earned Grade Point
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      padding: EdgeInsets.only(top: 2, left: 17),
                      height: 33,
                      width: 220,
                      // color: Colors.white,
                      child: Text(
                        "Earned Grade Point",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            fontSize: 20,
                            color: HexColor("#E0FBFC")),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //for Earned  Grade  point Input Box
                    Form(
                      //for validation
                      key: _formKeyEarnedGradePoint,
                      child: Container(
                        margin: EdgeInsets.only(top: 8, left: 13),
                        height: 55,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: HexColor("#D9D9D9"),
                        //   borderRadius: BorderRadius.all(Radius.circular(10)),
                        // ),

                        //padding
                        child: TextFormField(
                          //for validation
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Subject Number';
                            } else if (double.parse(value) < 1) {
                              return 'Invalid Input';
                            }
                            return null;
                          },

                          //for text into center
                          textAlign: TextAlign.center,

                          //for geeting user input
                          controller: EarnedGrade_Controller,
                          //for move to cursor next Text automatically
                          textInputAction: TextInputAction.next,
                          //for only number
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: HexColor("#D9D9D9"),
                            hintText: "Enter Point",
                            hintStyle: const TextStyle(
                              fontFamily: "RobotoSlab",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //for Question -2 --> Earned Credits
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 50),
                      padding: EdgeInsets.only(top: 2, left: 17),
                      height: 33,
                      width: 220,
                      // color: Colors.white,
                      child: Text(
                        "Earned Credits",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            fontSize: 20,
                            color: HexColor("#E0FBFC")),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    //for Enter Creadit Input Box
                    Form(
                      //for validation
                      key: _formKeyEarnedCreaditPoint,

                      child: Container(
                        margin: EdgeInsets.only(top: 9, left: 13),
                        height: 55,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: HexColor("#D9D9D9"),
                        //   borderRadius: BorderRadius.all(Radius.circular(10)),
                        // ),

                        //padding
                        child: TextFormField(
                          //for validation
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Subject Number';
                            }
                            return null;
                          },

                          //for text into center
                          textAlign: TextAlign.center,
                          //for geeting user input
                          controller: EarnedCreadit_Controller,

                          //for only number
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: HexColor("#D9D9D9"),
                            hintText: "Enter Point",
                            hintStyle: const TextStyle(
                              fontFamily: "RobotoSlab",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //for get CGPA Button
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 8),
                      // color: Colors.white,
                      child: SizedBox(
                        height: 55,
                        width: 135,
                        child: TextButton(
                          //goto SPI Page
                          onPressed: () {
                            //for store all 2 user data
                            if (EarnedGrade_Controller.text.isNotEmpty) {
                              EarnedGreadPoint = EarnedGrade_Controller.text;
                            }
                            if (EarnedCreadit_Controller.text.isNotEmpty) {
                              EarnedCreaditPoint =
                                  EarnedCreadit_Controller.text;
                            }

                            //for Form Validation
                            setState(() {
                              if ((_formKeyEarnedGradePoint.currentState!
                                      .validate()) &&
                                  (_formKeyEarnedCreaditPoint.currentState!
                                      .validate())) {
                                //send all data into the CGPA Result Page and move to CGPA result page
                                sendItem(context);
                              }
                            });
                          },

                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(HexColor("#E0FBFC")),

                            //for circular border radius for button
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),

                          //for button text
                          child: const Text(
                            "Get CGPA",
                            style: TextStyle(
                              letterSpacing: 0.4,
                              fontFamily: "RobotoSlab",
                              fontSize: 23,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  color: Colors.white,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    /*
                    //this is only for referance
                    //show user input
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: ElevatedButton(
                        child: Text("Show User Input"),
                        style: ElevatedButton.styleFrom(
                          primary: HexColor("#242E38"),
                          //this colour set (opacity is low) when button is disable
                          onSurface: HexColor("#E0FBFC"),
                        ),
                        onPressed: () {
                          //show in terminal
                          print("Earned Gread : $EarnedGreadPoint");
                          print("Earned Creadit : $EarnedCreaditPoint");
                        },
                      ),
                    ),
                    */

                    //for Home Button
                    Container(
                      margin: EdgeInsets.only(top: 13, left: 8),

                      height: 43,
                      width: 90,
                      // color: Colors.white,
                      child: TextButton(
                        //goto SPI Page
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },

                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(HexColor("#242E38")),

                          //for circular border radius for button
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),

                        //for button text
                        child: const Text(
                          "Home",
                          style: TextStyle(
                            letterSpacing: 0.4,
                            fontFamily: "RobotoSlab",
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //after Home Button Some Space
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
