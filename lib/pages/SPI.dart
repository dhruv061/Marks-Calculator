import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:gtu_marks/pages/SPI_Result.dart';
import 'package:hexcolor/hexcolor.dart';
import 'HomePage.dart';

class SPI_Page extends StatefulWidget {
  @override
  State<SPI_Page> createState() => _SPI_PageState();
}

//**************************************************************************************** */

//this all list for form validation

//for Subject Name --> Form Validation
List<GlobalKey<FormState>> _formkeySubName = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//for Subject Creadit --> Form Validation
List<GlobalKey<FormState>> _formkeySubCreadit = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//for Mid-1 Marks --> Form Validation
List<GlobalKey<FormState>> _formkeyMid_I = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//for Mid-2 Marks --> Form Validation
List<GlobalKey<FormState>> _formkeyMid_II = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//for Gtu Marks --> Form Validation
List<GlobalKey<FormState>> _formkeyGtuMarks = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//for Internal Marks --> Form Validation
List<GlobalKey<FormState>> _formkeyInternal = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
];

//************************************************************************************************ */

class _SPI_PageState extends State<SPI_Page> {
  //for store Subject Number Value
  String Subject_Number = ' ';
  //converted subject Number --> Converted inside Go button
  int subjectNumber = 0;

  //for Go button anble and disable
  bool isGoButtonActive = true;

  //for Next button anble and disable
  bool isNextButtonActive1 = true;
  bool isNextButtonActive2 = true;
  bool isNextButtonActive3 = true;
  bool isNextButtonActive4 = true;
  bool isNextButtonActive5 = true;
  bool isNextButtonActive6 = true;

  //when GO button pressed then show the Container & when all the filed are fillup then show get SPI button
  bool viewVisible1 = false;
  bool viewVisible2 = false;
  bool viewVisible3 = false;
  bool viewVisible4 = false;
  bool viewVisible5 = false;
  bool viewVisible6 = false;
  bool viewVisible7 = false;

  //for show Container
  //after we press go button we can show all other below container
  //as well as after we fillUp all the filed then we show getSpi button
  void showContainer1() {
    setState(() {
      viewVisible1 = true;
    });
  }

  void showContainer2() {
    setState(() {
      viewVisible2 = true;
    });
  }

  void showContainer3() {
    setState(() {
      viewVisible3 = true;
    });
  }

  void showContainer4() {
    setState(() {
      viewVisible4 = true;
    });
  }

  void showContainer5() {
    setState(() {
      viewVisible5 = true;
    });
  }

  void showContainer6() {
    setState(() {
      viewVisible6 = true;
    });
  }

  void showContainer7() {
    setState(() {
      viewVisible7 = true;
    });
  }

  ///********************************************************************************************* */
  //this is for geeting user input and store user input into the list

  //for Subject Number
  //for getting user input
  TextEditingController SubNumberController = TextEditingController();

//for storing SubName user Input we use controller of list  --> Subjectname controller
  List<TextEditingController> _SubNameController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of an SubName
  final List<String> _SubNameList = [
    'valu-1',
    'valu-2',
    'valu-3',
    'valu-4',
    'valu-5',
    'valu-6',
    'valu-7',
    'valu-8'
  ];

  //for storing Subject Creadit user Input we use controller of list
  List<TextEditingController> _SubCreaditController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of Subject Creadit
  final List<String> _SubCreaditList = [];

  //for storing Mid-1 Mark user Input we use controller of list  --> Mid-1 Mark controller
  List<TextEditingController> _Mid_1_MarkController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of Mid sem -1 marks
  final List<String> _Mid_I_MarksList = [];

  //for storing Mid-2 Mark user Input we use controller of list  --> Mid-2 Mark controller
  List<TextEditingController> _Mid_2_MarkController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of Mid sem -2 marks
  final List<String> _Mid_II_MarksList = [];

  //for storing Gtu Marks user Input we use controller of list
  List<TextEditingController> _Gtu_MarkController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of Gtu marks
  final List<String> _GtuMarksList = [];

  //for storing Practical or internal user Input we use controller of list
  List<TextEditingController> _Internal_MarkController = [
    for (int i = 0; i < 8; i++) TextEditingController()
  ];

  //list of Gtu marks
  final List<String> _InternalMarksList = [];

//*************************************************************************************************/

  //share the all the data into the SPI_Calculation
  sendItem(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SPI_Result(
              SubCreaditList: _SubCreaditList,
              MID_I_MarksList: _Mid_I_MarksList,
              MID_II_MarksList: _Mid_II_MarksList,
              GtuMarksList: _GtuMarksList,
              InternalMarksList: _InternalMarksList,
              getSubjectNumber: subjectNumber,
            )));
  }

//************************************************************************************************** */
  //for form validation
  //for subject Number --> Form Validation
  GlobalKey<FormState> _formkeySubNumber = new GlobalKey();
//*********************************************************************************************** */

  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#98C1D9"),

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
                    //for title on top
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 20),
                      padding: EdgeInsets.only(top: 25),
                      height: 100,
                      width: 326,
                      decoration: BoxDecoration(
                        color: HexColor("#242E38"),
                        //for circular border radius for box
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        "Calculate SPI",
                        style: TextStyle(
                            fontFamily: "RobotoSlab",
                            color: HexColor("#EE6C4D"),
                            fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    //for space between title and image
                    SizedBox(height: 15),

                    //for Image
                    Container(
                      margin: EdgeInsets.only(left: 35),
                      height: 120,
                      width: 100,
                      // color: Colors.white,
                      child: Image.asset("assets/images/SPI.png"),
                    ),

                    //this all input vox container
                    //multiple container inside one container for taking user input
                    Container(
                      margin: EdgeInsets.only(left: 5),

                      //this will use for change hight automatically
                      constraints:
                          const BoxConstraints(maxHeight: double.infinity),
                      // height: 2700,
                      width: 326,
                      decoration: BoxDecoration(
                        color: HexColor("#3D5A80"),
                        //for circular border radius for box
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),

                      //for user input box
                      child: Column(
                        children: [
                          //for Q.1  --> How Many Subject You Have?
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.only(top: 2, left: 6),
                            height: 26,
                            width: 300,
                            // color: Colors.white,
                            child: const Text(
                              "How Many Subject You Have?",
                              style: TextStyle(
                                  fontFamily: "RobotoSlab",
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),

                          //for Q.1  --> Subject Number input Box
                          SubNumber_Input_Box(),

                          //for Go Button
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: ElevatedButton(
                              child: Text("Go"),

                              style: ElevatedButton.styleFrom(
                                primary: HexColor("#EE6C4D"),
                                //this colour set (opacity is low) when button is disable
                                onSurface: HexColor("#E0FBFC"),
                              ),

                              //store user value -->subjectNumber
                              onPressed: isGoButtonActive
                                  ? () {
                                      //for Form Validation
                                      if (_formkeySubNumber.currentState!
                                          .validate()) {
                                        //this show the container after prerssed button
                                        showContainer1();
                                      }

                                      setState(() {
                                        //this is for store subjectnumber value from user input
                                        if (SubNumberController
                                            .text.isNotEmpty) {
                                          Subject_Number =
                                              SubNumberController.text;

                                          //convert subject number into the int
                                          subjectNumber =
                                              int.parse(Subject_Number);
                                        }

                                        // print("Subject Number Is : $subjectNumber");
                                      });
                                    }
                                  : null,
                            ),
                          ),

                          //for Q.2 --> Enter Subject Name  (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible1,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 26,
                              width: 300,
                              // color: Colors.white,
                              child: Text(
                                "Enter $subjectNumber Subject Name",
                                style: const TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.2 --> Subject Name input Box
                          Visibility(
                            visible: viewVisible1,
                            child: showSubName_InputBox(),
                          ),

                          //for next Button -1
                          Visibility(
                            visible: viewVisible1,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive1
                                    ? () {
                                        //this is temporary variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeySubName[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer2();

                                                //this is for diable button ,after touch once time
                                                isNextButtonActive1 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store SubName data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //replace the iteam in subname list
                                              _SubNameList[i] =
                                                  _SubNameController[i].text;

                                              /* //This is use when we add simply add data into the list throug controller
                                               _SubNameList.add(
                                                 _SubNameController[i].text);
                                                 */
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for Q.3 --> Enter Subject Creadit (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible2,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 26,
                              width: 300,
                              // color: Colors.white,
                              child: Text(
                                "Enter $subjectNumber Subject Creadit",
                                style: const TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.3 --> Subject Cradit input Box
                          Visibility(
                            visible: viewVisible2,
                            child: showSubCreadit_InputBox(),
                          ),

                          //for next Button - 2
                          Visibility(
                            visible: viewVisible2,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive2
                                    ? () {
                                        //this is temporary variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeySubCreadit[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer3();

                                                //this is for diable button ,after touch once time
                                                isNextButtonActive2 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store SubCreadit data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //store the credit data into the list
                                              _SubCreaditList.add(
                                                  _SubCreaditController[i]
                                                      .text);
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for Q.4 --> Enter your Mid-I Marks  (Out of 70)  (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible3,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 26,
                              width: 300,
                              // color: Colors.white,
                              child: const Text(
                                "Enter your Mid-I Marks  (Out of 70)",
                                style: TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.4 --> Midsem-I Input Box
                          Visibility(
                            visible: viewVisible3,
                            child: showMid_I_Mark_InputBox(),
                          ),

                          //for next Button -3
                          Visibility(
                            visible: viewVisible3,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive3
                                    ? () {
                                        //for tempraray variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeyMid_I[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer4();

                                                //this is for diable button ,after touch once time
                                                isNextButtonActive3 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store Mid-1 data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //store the credit data into the list
                                              _Mid_I_MarksList.add(
                                                  _Mid_1_MarkController[i]
                                                      .text);
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for Q.5 --> Enter your Mid-II Marks  (Out of 70)  (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible4,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 26,
                              width: 300,
                              // color: Colors.white,
                              child: const Text(
                                "Enter your Mid-II Marks  (Out of 70)",
                                style: TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.5 --> Midsem-II Input Box
                          Visibility(
                            visible: viewVisible4,
                            child: showMid_II_Mark_InputBox(),
                          ),

                          //for next Button - 4
                          Visibility(
                            visible: viewVisible4,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive4
                                    ? () {
                                        //for tempraray variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeyMid_II[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer5();
                                                //this is for diable button ,after touch once time
                                                isNextButtonActive4 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store Mid-1 data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //store the credit data into the list
                                              _Mid_II_MarksList.add(
                                                  _Mid_2_MarkController[i]
                                                      .text);
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for Q.6 --> Enter your Gtu Marks (Guess) (Out of 70) (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible5,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 26,
                              width: 300,
                              // color: Colors.white,
                              child: const Text(
                                "Enter your Gtu Marks (Guess) (Out of 70)",
                                style: TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.6 --> GTU marks Input Box
                          Visibility(
                            visible: viewVisible5,
                            child: GTU_Mark_InputBox(),
                          ),

                          //for next Button - 5
                          Visibility(
                            visible: viewVisible5,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive5
                                    ? () {
                                        //for tempraray variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeyGtuMarks[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer6();
                                                //this is for diable button ,after touch once time
                                                isNextButtonActive5 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store Gtu data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //store the credit data into the list
                                              _GtuMarksList.add(
                                                  _Gtu_MarkController[i].text);
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for Q.7 --> Enter your Internal OR Practical Marks(Guess) (Out of 50) (here for hiding and showing we use Visibility Widget)
                          Visibility(
                            visible: viewVisible6,
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              padding: EdgeInsets.only(top: 2, left: 6),
                              height: 40,
                              width: 300,
                              // color: Colors.white,
                              child: const Text(
                                "Enter your Internal OR Practical Marks(Guess)(Out of 50)",
                                style: TextStyle(
                                    fontFamily: "RobotoSlab",
                                    fontSize: 15,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          //for Q.7 --> Internal Marks Input Box
                          Visibility(
                            visible: viewVisible6,
                            child: Internal_Mark_InputBox(),
                          ),

                          //for some space after last input box
                          SizedBox(height: 40),

                          //for next Button - 6
                          Visibility(
                            visible: viewVisible6,
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: ElevatedButton(
                                child: Text("Next"),

                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#EE6C4D"),
                                  //this colour set (opacity is low) when button is disable
                                  onSurface: HexColor("#E0FBFC"),
                                ),

                                //store user value -->subjectNumber
                                onPressed: isNextButtonActive6
                                    ? () {
                                        //for tempraray variable
                                        int count = 0;
                                        setState(() {
                                          //for form validation
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_formkeyInternal[i]
                                                .currentState!
                                                .validate()) {
                                              count++;

                                              //here this is their Because --> when all textfiled are fillup then we go next otherwise not
                                              if (count >= subjectNumber) {
                                                //this show the container after prerssed button
                                                showContainer7();
                                                //this is for diable button ,after touch once time
                                                isNextButtonActive6 = false;
                                              }
                                            }
                                          }

                                          //for here this button below to subname that's why we put controller here
                                          //store Gtu data into the list
                                          for (int i = 0;
                                              i < subjectNumber;
                                              i++) {
                                            if (_SubNameController[i]
                                                .text
                                                .isNotEmpty) {
                                              //store the credit data into the list
                                              _InternalMarksList.add(
                                                  _Internal_MarkController[i]
                                                      .text);
                                            }
                                          }
                                        });
                                      }
                                    : null,
                              ),
                            ),
                          ),

                          //for GET-SPI Button
                          //after fillup all the filed then show GetSpi button that's why we wrap with Visibilty button
                          Visibility(
                            visible: viewVisible7,

                            //add this in next button
                            //this show the container after prerssed button
                            //showContainer();
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              // color: Colors.white,
                              child: SizedBox(
                                height: 50,
                                width: 128,
                                child: TextButton(
                                  //goto SPI Page
                                  onPressed: () {
                                    //share the all the data in SPI_Calculation Page and this is automatically move to SPI_result Page
                                    sendItem(context);
                                  },

                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        HexColor("#242E38")),

                                    //for circular border radius for button
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),

                                    //   //for change the button colour
                                    //   //here getColor is metohd
                                    //   overlayColor: getColor(
                                    //       HexColor("#3D5A80"), HexColor("#EE6C4D")),
                                  ),

                                  //for button text
                                  child: const Text(
                                    "Get SPI",
                                    style: TextStyle(
                                      letterSpacing: 0.4,
                                      fontFamily: "RobotoSlab",
                                      fontSize: 23,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //container for home button
                          Container(
                            margin: EdgeInsets.only(left: 0, top: 8),
                            child: IconButton(
                              //goto Home Page
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },

                              icon: Image.asset(
                                  "assets/icons/HomeButtonIcone.gif"),
                              iconSize: 60,
                              color: HexColor("#98C1D9"),
                              splashColor: HexColor("#EE6C4D"),
                              splashRadius: 60,
                            ),
                          ),

                          //after home button some space
                          const SizedBox(
                            height: 10,
                          ),
                        ],
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
                          primary: HexColor("#EE6C4D"),
                          //this colour set (opacity is low) when button is disable
                          onSurface: HexColor("#E0FBFC"),
                        ),
                        onPressed: () {
                          //show in terminal
                          // print("Subject Name is $SubName_UserInput");
                          // print("Subject Number is : $subjectNumber");
                          print("Subject Name : $_SubNameList");
                          print("Subjcet Creadit : $_SubCreaditList");
                          print("Mid-1 marks : $_Mid_I_MarksList");
                          print("Mid-2 mark : $_Mid_II_MarksList");
                          print("Gtu Marks  : $_GtuMarksList");
                          print("Internal Marks : $_InternalMarksList");
                        },
                      ),
                    ),
                    */
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ************************************************************************************************ */

  // Methods for all Input-Box
  //for Subject Number Input-Box
  Widget SubNumber_Input_Box() {
    return Form(
      //for form validation
      key: _formkeySubNumber,

      child: Container(
        margin: EdgeInsets.only(top: 7),
        padding: EdgeInsets.only(top: 6, right: 5),
        height: 55,
        width: 300,

        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: Padding(
          padding: EdgeInsets.only(left: 12),

          //textfiled
          child: TextFormField(
            // //for storing user input && value in string format so we convert into the int formate
            // onChanged: (value) {
            //   subjectNumber = int.parse(value);
            // },

            //for storing user input
            controller: SubNumberController,

            //for validation
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter Subject Number';
              } else if (int.parse(value) < 4 || int.parse(value) > 8) {
                return 'Minimum-4 & Maximum8';
              }
              return null;
            },

            //for only number
            keyboardType: TextInputType.number,

            //for text into center
            textAlign: TextAlign.center,

            //for input-Box
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              fillColor: HexColor("#D9D9D9"),
              hintText: "Minimum-4 to Maximum-8 ",
              hintStyle: const TextStyle(
                fontFamily: "RobotoSlab",
                fontSize: 14,
              ),
            ),

            //for store only integer value
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
          ),
        ),
      ),
    );
  }

  //for Subject Name Input-Box
  Widget SubName_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeySubName[i],
      child: Container(
        margin: EdgeInsets.only(top: 7),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Subjcet Name';
            }
            return null;
          },
          //for geeting user input
          controller: _SubNameController[i],

          //for text into center
          textAlign: TextAlign.center,

          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "Subject Name",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  //for Subject Credit Input-Box
  Widget SubCreadit_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeySubCreadit[i],
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 6),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Subjcet Creadit';
            } else if (int.parse(value) < 1 || int.parse(value) > 8) {
              return 'Subject Creadit Limit is 1 to 8';
            }
            return null;
          },
          //for storing the data into the list
          controller: _SubCreaditController[i],

          //for text into center
          textAlign: TextAlign.center,

          //for only number
          keyboardType: TextInputType.number,

          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "${_SubNameList[i]} Creadit",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  //for Midsem-1 mark Input-Box
  Widget MidSem_I_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeyMid_I[i],
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 6),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Mid-1 Marks';
            } else if (int.parse(value) < 1 || int.parse(value) > 70) {
              return 'Subject Creadit Limit is 1 to 70';
            }
            return null;
          },
          //for geeting user input
          controller: _Mid_1_MarkController[i],
          //for only number
          keyboardType: TextInputType.number,

          //for text into center
          textAlign: TextAlign.center,

          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "${_SubNameList[i]} Mark",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  //for Midsem-2 mark Input-Box
  Widget MidSem_II_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeyMid_II[i],
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 6),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Mid-2 Marks';
            } else if (int.parse(value) < 1 || int.parse(value) > 70) {
              return 'Subject Creadit Limit is 1 to 70';
            }
            return null;
          },
          //for geeting user input
          controller: _Mid_2_MarkController[i],

          //for text into center
          textAlign: TextAlign.center,

          //for only number
          keyboardType: TextInputType.number,
          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "${_SubNameList[i]} Mark",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  //for Gtu mark Input-Box
  Widget GTUMarks_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeyGtuMarks[i],
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 6),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter GTU Marks';
            } else if (int.parse(value) < 1 || int.parse(value) > 70) {
              return 'Subject Creadit Limit is 1 to 70';
            }
            return null;
          },
          //for geeting user input
          controller: _Gtu_MarkController[i],

          //for text into center
          textAlign: TextAlign.center,

          //for only number
          keyboardType: TextInputType.number,
          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "${_SubNameList[i]} Mark",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  //for Internal or Practical Input Box
  Widget Internal_Input_Box(int i) {
    return Form(
      //for form validation
      key: _formkeyInternal[i],
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 6),
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          // color: HexColor("#D9D9D9"),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),

        //padding
        child: TextFormField(
          //for move to cursor next Text automatically
          textInputAction: TextInputAction.next,

          //for form validation
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Internal Marks';
            } else if (int.parse(value) < 1 || int.parse(value) > 50) {
              return 'Subject Creadit Limit is 1 to 50';
            }
            return null;
          },
          //for geeting user input
          controller: _Internal_MarkController[i],

          //for text into center
          textAlign: TextAlign.center,

          //for only number
          keyboardType: TextInputType.number,

          //for input -box
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: HexColor("#D9D9D9"),
            hintText: "${_SubNameList[i]} Mark",
            hintStyle: const TextStyle(
              fontFamily: "RobotoSlab",
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  /// ************************************************************************************** */
//methods for 4-5-6-7-8 inputs

//for Subject Name

//for 4 Subject Name
  Widget SubName4() {
    return Column(
      children: [
        SubName_Input_Box(0), //here we store user input at 0 Index
        SubName_Input_Box(1), //here we store user input at 1 Index
        SubName_Input_Box(2), //here we store user input at 2 Index
        SubName_Input_Box(3), //here we store user input at 3 Index
      ],
    );
  }

  //for 5 Subject Name
  Widget SubName5() {
    return Column(
      children: [
        SubName_Input_Box(0), //here we store user input at 0 Index
        SubName_Input_Box(1), //here we store user input at 1 Index
        SubName_Input_Box(2), //here we store user input at 2 Index
        SubName_Input_Box(3), //here we store user input at 3 Index
        SubName_Input_Box(4), //here we store user input at 4 Index
      ],
    );
  }

  //for 6 Subject Name
  Widget SubName6() {
    return Column(
      children: [
        SubName_Input_Box(0),
        SubName_Input_Box(1),
        SubName_Input_Box(2),
        SubName_Input_Box(3),
        SubName_Input_Box(4),
        SubName_Input_Box(5),
      ],
    );
  }

  //for 7 Subject Name
  Widget SubName7() {
    return Column(
      children: [
        SubName_Input_Box(0),
        SubName_Input_Box(1),
        SubName_Input_Box(2),
        SubName_Input_Box(3),
        SubName_Input_Box(4),
        SubName_Input_Box(5),
        SubName_Input_Box(6),
      ],
    );
  }

  //for 8 Subject Name
  Widget SubName8() {
    return Column(
      children: [
        SubName_Input_Box(0),
        SubName_Input_Box(1),
        SubName_Input_Box(2),
        SubName_Input_Box(3),
        SubName_Input_Box(4),
        SubName_Input_Box(5),
        SubName_Input_Box(6),
        SubName_Input_Box(7),
      ],
    );
  }

  //----------------------------------------------//

  //for Subject Creadit
  //for 4 Subject Creadit
  Widget SubCreadit4() {
    return Column(
      children: [
        SubCreadit_Input_Box(0),
        SubCreadit_Input_Box(1),
        SubCreadit_Input_Box(2),
        SubCreadit_Input_Box(3),
      ],
    );
  }

  //for 5 Subject Creadit
  Widget SubCreadit5() {
    return Column(
      children: [
        SubCreadit_Input_Box(0),
        SubCreadit_Input_Box(1),
        SubCreadit_Input_Box(2),
        SubCreadit_Input_Box(3),
        SubCreadit_Input_Box(4),
      ],
    );
  }

  //for 6 Subject Creadit
  Widget SubCreadit6() {
    return Column(
      children: [
        SubCreadit_Input_Box(0),
        SubCreadit_Input_Box(1),
        SubCreadit_Input_Box(2),
        SubCreadit_Input_Box(3),
        SubCreadit_Input_Box(4),
        SubCreadit_Input_Box(5),
      ],
    );
  }

  //for 7 Subject Creadit
  Widget SubCreadit7() {
    return Column(
      children: [
        SubCreadit_Input_Box(0),
        SubCreadit_Input_Box(1),
        SubCreadit_Input_Box(2),
        SubCreadit_Input_Box(3),
        SubCreadit_Input_Box(4),
        SubCreadit_Input_Box(5),
        SubCreadit_Input_Box(6),
      ],
    );
  }

  //for 8 Subject Creadit
  Widget SubCreadit8() {
    return Column(
      children: [
        SubCreadit_Input_Box(0),
        SubCreadit_Input_Box(1),
        SubCreadit_Input_Box(2),
        SubCreadit_Input_Box(3),
        SubCreadit_Input_Box(4),
        SubCreadit_Input_Box(5),
        SubCreadit_Input_Box(6),
        SubCreadit_Input_Box(7),
      ],
    );
  }

  //----------------------------------------//

  //for Mid-1 Marks
  //for 4 - subject
  Widget Mid_I_Marks_4() {
    return Column(
      children: [
        MidSem_I_Input_Box(0),
        MidSem_I_Input_Box(1),
        MidSem_I_Input_Box(2),
        MidSem_I_Input_Box(3),
      ],
    );
  }

  //for 5 - subject
  Widget Mid_I_Marks_5() {
    return Column(
      children: [
        MidSem_I_Input_Box(0),
        MidSem_I_Input_Box(1),
        MidSem_I_Input_Box(2),
        MidSem_I_Input_Box(3),
        MidSem_I_Input_Box(4),
      ],
    );
  }

  //for 6 - subject
  Widget Mid_I_Marks_6() {
    return Column(
      children: [
        MidSem_I_Input_Box(0),
        MidSem_I_Input_Box(1),
        MidSem_I_Input_Box(2),
        MidSem_I_Input_Box(3),
        MidSem_I_Input_Box(4),
        MidSem_I_Input_Box(5),
      ],
    );
  }

  //for 7 - subject
  Widget Mid_I_Marks_7() {
    return Column(
      children: [
        MidSem_I_Input_Box(0),
        MidSem_I_Input_Box(1),
        MidSem_I_Input_Box(2),
        MidSem_I_Input_Box(3),
        MidSem_I_Input_Box(4),
        MidSem_I_Input_Box(5),
        MidSem_I_Input_Box(6),
      ],
    );
  }

  //for 8- subject
  Widget Mid_I_Marks_8() {
    return Column(
      children: [
        MidSem_I_Input_Box(0),
        MidSem_I_Input_Box(1),
        MidSem_I_Input_Box(2),
        MidSem_I_Input_Box(3),
        MidSem_I_Input_Box(4),
        MidSem_I_Input_Box(5),
        MidSem_I_Input_Box(6),
        MidSem_I_Input_Box(7),
      ],
    );
  }

  //---------------------------------------------/

  //for Mid-2 Marks
  //for 4 - subject
  Widget Mid_II_Marks_4() {
    return Column(
      children: [
        MidSem_II_Input_Box(0),
        MidSem_II_Input_Box(1),
        MidSem_II_Input_Box(2),
        MidSem_II_Input_Box(3),
      ],
    );
  }

  //for 5 - subject
  Widget Mid_II_Marks_5() {
    return Column(
      children: [
        MidSem_II_Input_Box(0),
        MidSem_II_Input_Box(1),
        MidSem_II_Input_Box(2),
        MidSem_II_Input_Box(3),
        MidSem_II_Input_Box(4),
      ],
    );
  }

  //for 6 - subject
  Widget Mid_II_Marks_6() {
    return Column(
      children: [
        MidSem_II_Input_Box(0),
        MidSem_II_Input_Box(1),
        MidSem_II_Input_Box(2),
        MidSem_II_Input_Box(3),
        MidSem_II_Input_Box(4),
        MidSem_II_Input_Box(5),
      ],
    );
  }

  //for 7 - subject
  Widget Mid_II_Marks_7() {
    return Column(
      children: [
        MidSem_II_Input_Box(0),
        MidSem_II_Input_Box(1),
        MidSem_II_Input_Box(2),
        MidSem_II_Input_Box(3),
        MidSem_II_Input_Box(4),
        MidSem_II_Input_Box(5),
        MidSem_II_Input_Box(6),
      ],
    );
  }

  //for 8- subject
  Widget Mid_II_Marks_8() {
    return Column(
      children: [
        MidSem_II_Input_Box(0),
        MidSem_II_Input_Box(1),
        MidSem_II_Input_Box(2),
        MidSem_II_Input_Box(3),
        MidSem_II_Input_Box(4),
        MidSem_II_Input_Box(5),
        MidSem_II_Input_Box(6),
        MidSem_II_Input_Box(7),
      ],
    );
  }

  //-------------------------------------------/
  //for GTU marks
  //for 4- subject
  Widget GTUMarks_4() {
    return Column(
      children: [
        GTUMarks_Input_Box(0),
        GTUMarks_Input_Box(1),
        GTUMarks_Input_Box(2),
        GTUMarks_Input_Box(3),
      ],
    );
  }

  //for 5 - subject
  Widget GTUMarks_5() {
    return Column(
      children: [
        GTUMarks_Input_Box(0),
        GTUMarks_Input_Box(1),
        GTUMarks_Input_Box(2),
        GTUMarks_Input_Box(3),
        GTUMarks_Input_Box(4),
      ],
    );
  }

  //for 6- subject
  Widget GTUMarks_6() {
    return Column(
      children: [
        GTUMarks_Input_Box(0),
        GTUMarks_Input_Box(1),
        GTUMarks_Input_Box(2),
        GTUMarks_Input_Box(3),
        GTUMarks_Input_Box(4),
        GTUMarks_Input_Box(5),
      ],
    );
  }

  //for 7- subject
  Widget GTUMarks_7() {
    return Column(
      children: [
        GTUMarks_Input_Box(0),
        GTUMarks_Input_Box(1),
        GTUMarks_Input_Box(2),
        GTUMarks_Input_Box(3),
        GTUMarks_Input_Box(4),
        GTUMarks_Input_Box(5),
        GTUMarks_Input_Box(6),
      ],
    );
  }

  //for 8 - subject
  Widget GTUMarks_8() {
    return Column(
      children: [
        GTUMarks_Input_Box(0),
        GTUMarks_Input_Box(1),
        GTUMarks_Input_Box(2),
        GTUMarks_Input_Box(3),
        GTUMarks_Input_Box(4),
        GTUMarks_Input_Box(5),
        GTUMarks_Input_Box(6),
        GTUMarks_Input_Box(7),
      ],
    );
  }

  //-------------------------------------------/
  //for Internal Or Practical marks

  //for 4 - subject
  Widget Internal_4() {
    return Column(
      children: [
        Internal_Input_Box(0),
        Internal_Input_Box(1),
        Internal_Input_Box(2),
        Internal_Input_Box(3),
      ],
    );
  }

  //for 5 - subject
  Widget Internal_5() {
    return Column(
      children: [
        Internal_Input_Box(0),
        Internal_Input_Box(1),
        Internal_Input_Box(2),
        Internal_Input_Box(3),
        Internal_Input_Box(4),
      ],
    );
  }

  //for 6 - subject
  Widget Internal_6() {
    return Column(
      children: [
        Internal_Input_Box(0),
        Internal_Input_Box(1),
        Internal_Input_Box(2),
        Internal_Input_Box(3),
        Internal_Input_Box(4),
        Internal_Input_Box(5),
      ],
    );
  }

  //for 7 - subject
  Widget Internal_7() {
    return Column(
      children: [
        Internal_Input_Box(0),
        Internal_Input_Box(1),
        Internal_Input_Box(2),
        Internal_Input_Box(3),
        Internal_Input_Box(4),
        Internal_Input_Box(5),
        Internal_Input_Box(6),
      ],
    );
  }

  //for 8 - subject
  Widget Internal_8() {
    return Column(
      children: [
        Internal_Input_Box(0),
        Internal_Input_Box(1),
        Internal_Input_Box(2),
        Internal_Input_Box(3),
        Internal_Input_Box(4),
        Internal_Input_Box(5),
        Internal_Input_Box(6),
        Internal_Input_Box(7),
      ],
    );
  }

  //********************************************************************************************* */
  //methods for calling 4-5-6-7-8 method

  // //for showing Subject Name Input Box
  Widget showSubName_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = SubName_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = SubName4();
        break;
      case 5:
        widget = SubName5();
        break;
      case 6:
        widget = SubName6();
        break;
      case 7:
        widget = SubName7();
        break;
      case 8:
        widget = SubName8();
        break;
    }

    return widget;
  }

  //for showing Subject Creadit Input Box
  Widget showSubCreadit_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = SubCreadit_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = SubCreadit4();
        break;
      case 5:
        widget = SubCreadit5();
        break;
      case 6:
        widget = SubCreadit6();
        break;
      case 7:
        widget = SubCreadit7();
        break;
      case 8:
        widget = SubCreadit8();
        break;
    }

    return widget;
  }

  //for showing Mid-1 Input Box
  Widget showMid_I_Mark_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = MidSem_I_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = Mid_I_Marks_4();
        break;
      case 5:
        widget = Mid_I_Marks_5();
        break;
      case 6:
        widget = Mid_I_Marks_6();
        break;
      case 7:
        widget = Mid_I_Marks_7();
        break;
      case 8:
        widget = Mid_I_Marks_8();
        break;
    }
    return widget;
  }

  //for showing Mid-1 Input Box
  Widget showMid_II_Mark_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = MidSem_I_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = Mid_II_Marks_4();
        break;
      case 5:
        widget = Mid_II_Marks_5();
        break;
      case 6:
        widget = Mid_II_Marks_6();
        break;
      case 7:
        widget = Mid_II_Marks_7();
        break;
      case 8:
        widget = Mid_II_Marks_8();
        break;
    }
    return widget;
  }

  //for showing GTU Mark Input Box
  Widget GTU_Mark_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = GTUMarks_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = GTUMarks_4();
        break;
      case 5:
        widget = GTUMarks_5();
        break;
      case 6:
        widget = GTUMarks_6();
        break;
      case 7:
        widget = GTUMarks_7();
        break;
      case 8:
        widget = GTUMarks_8();
        break;
    }
    return widget;
  }

  //for showing Internal Or Practical marks Input Box
  Widget Internal_Mark_InputBox() {
    //decalre widget variable for retuerning  --> here intial value is single name box
    late Widget widget = GTUMarks_Input_Box(0);

    switch (subjectNumber) {
      case 4:
        widget = Internal_4();
        break;
      case 5:
        widget = Internal_5();
        break;
      case 6:
        widget = Internal_6();
        break;
      case 7:
        widget = Internal_7();
        break;
      case 8:
        widget = Internal_8();
        break;
    }
    return widget;
  }
}
