import 'package:flutter/material.dart';
import 'package:gtu_marks/pages/HomePage.dart';
import 'package:hexcolor/hexcolor.dart';

class PercentagePage extends StatefulWidget {
  @override
  State<PercentagePage> createState() => _PercentagePageState();
}

class _PercentagePageState extends State<PercentagePage> {
  //for getting user input
  TextEditingController Spi_UserInputController = TextEditingController();

  String SPIValue = ' ';

  double ConvertedSPI = 0.0;

  //get Percentage
  double PercenTage = 0.0;

  //for Get %  button anble and disable
  bool isPersentageButtonActive = true;

  //for form validation  --> SPIInput Validation
  GlobalKey<FormState> _formKeySPI_Input = GlobalKey();

  //When Get% Button Prseed then Show the Result
  bool finalResult = false;

  //if input is valid & show the result
  void showResult() {
    setState(() {
      finalResult = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#9BD9C9"),

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
                      padding: EdgeInsets.only(top: 23, left: 55),
                      height: 100,
                      width: 326,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: HexColor("#3D5A80"),

                        //for circular border radius for box
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),

                      child: Text(
                        "Calculate %",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            color: HexColor("#E0FBFC"),
                            fontSize: 40),
                        // textAlign: TextAlign.center,
                      ),
                    ),

                    //for image
                    Container(
                      margin: EdgeInsets.only(left: 19, top: 50),
                      height: 244,
                      width: 288,
                      // color: Colors.white,
                      child: Image.asset(
                        "assets/images/Persentage.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                    //for Question  --> Earned Grade Point
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.only(top: 2, left: 17),
                      height: 33,
                      width: 220,
                      // color: Colors.white,
                      child: Text(
                        "Enter SPI",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            fontSize: 20,
                            color: HexColor("#242E38")),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    //for Enter SPI-UserInput Input Box
                    Form(
                      //for form validation
                      key: _formKeySPI_Input,

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
                              return 'Please Enter SPI';
                            } else if (double.parse(value) < 1) {
                              return 'Invalid Input';
                            } else if (double.parse(value) > 10) {
                              return 'Invalid Input';
                            } else {
                              return null;
                            }
                          },

                          //for text into center
                          textAlign: TextAlign.center,

                          //for Storing User Input
                          controller: Spi_UserInputController,

                          //for only number
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: HexColor("#D9D9D9"),
                            hintText: "Enter Value",
                            hintStyle: const TextStyle(
                              fontFamily: "RobotoSlab",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //for GET %  Button
                    Container(
                      margin: EdgeInsets.only(top: 13, left: 8),

                      height: 50,
                      width: 120,
                      // color: Colors.white,
                      child: TextButton(
                        onPressed: isPersentageButtonActive
                            ? () {
                                setState(() {
                                  //for store user input
                                  if (Spi_UserInputController.text.isNotEmpty) {
                                    SPIValue = Spi_UserInputController.text;

                                    //calculation for Persentage
                                    ConvertedSPI = double.parse(SPIValue);
                                    double result = (ConvertedSPI - 0.5) * 10;

                                    //rounded into 2 number in double after .
                                    double temp = double.parse(
                                        (result).toStringAsFixed(2));
                                    PercenTage = result;
                                  }

                                  //for form validation
                                  if (_formKeySPI_Input.currentState!
                                      .validate()) {
                                    //this is show result is input is correct
                                    showResult();
                                  }
                                });
                              }
                            : null,

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
                          "Get %",
                          style: TextStyle(
                            letterSpacing: 0.4,
                            fontFamily: "RobotoSlab",
                            fontSize: 25,
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
                          print("SPI Value is : $SPIValue");
                        },
                      ),
                    ),
                    */

                    //circule box
                    Visibility(
                      visible: finalResult,
                      child: Container(
                        margin: EdgeInsets.only(left: 15, top: 30),

                        width: 210,
                        height: 210,
                        decoration: BoxDecoration(
                          color: HexColor("#F8ED6D"),
                          shape: BoxShape.circle,
                        ),

                        //for CPI text and getting Result
                        child: Column(
                          children: [
                            //for Geeting SPI Result
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 60),
                              child: Text(
                                "$PercenTage% ",
                                style: TextStyle(
                                    fontFamily: "RobotoSlab",
                                    color: HexColor("#242E38"),
                                    fontSize: 58,
                                    fontWeight: FontWeight.bold,
                                    shadows: const [
                                      Shadow(
                                          color: Colors.white, blurRadius: 15)
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //for Home Button
                    Container(
                      margin: EdgeInsets.only(top: 18, left: 8),

                      height: 45,
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
