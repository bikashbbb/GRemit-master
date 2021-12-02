import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/you_send_fund.dart';
import 'package:gremit/Screens/remember_device.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/base-template/medium_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class AddRecipient extends StatefulWidget {
  @override
  _AddRecipientState createState() => _AddRecipientState();
}

const MaterialColor _buttonTextColor = MaterialColor(0xffAD4BD2, <int, Color>{
  50: Color(0xffAD4BD2),
  100: Color(0xffAD4BD2),
  200: Color(0xffAD4BD2),
  300: Color(0xffAD4BD2),
  400: Color(0xffAD4BD2),
  500: Color(0xffAD4BD2),
  600: Color(0xffAD4BD2),
  700: Color(0xffAD4BD2),
  800: Color(0xffAD4BD2),
  900: Color(0xffAD4BD2),
});

class _AddRecipientState extends State<AddRecipient> {
  DateTime dateTime;
  DateTime date;
  // DateTime selectedDate = DateTime.now();
  var selectedDate;

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2022),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        print("Selected Date = $selectedDate");
        selectedDate = picked;
      });
  }

  //////////////////////// copy Code  //////////////
  bool isSignupScreen = false;
  bool isMale = true;
  bool isRememberMe = false;

  DateTime _date = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        initialDate: _date, //Current  Date
        firstDate: DateTime(1947), // First Date
        lastDate: DateTime(2033), //Last Date
        initialDatePickerMode: DatePickerMode.day, //Day or year Mode
        selectableDayPredicate: (DateTime val) =>
            val.weekday == 6 || val.weekday == 7 ? false : true, //WeekDay Off
        builder: (BuildContext context, Widget child) {
          return Theme(
              data: ThemeData(
                primarySwatch: _buttonTextColor, //Button Color Ok and Cancel
                primaryColor: kpurple, //Picked or select date color
                accentColor: kpurple, //Picked or select date color
              ),
              child: child);
        });
    if (_datePicker != null && _datePicker != _date) {
      _date = _datePicker;
      print(_date.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    String title = "Date Picker";
    FocusNode myFocusNode = new FocusNode();

    return Scaffold(
      body: MediumOval(
          topContainer: true,
          topLogo: false,
          contentScreen: Container(
            height: height1,
            width: width1,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width1 * 0.06, top: width1 * 0.09),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: FadeAnimation(
                              1,
                              Icon(
                                Icons.arrow_back,
                                size: 32,
                                color: kwhite,
                              ),
                            ),
                          ),
                          FadeAnimation(
                            1.1,
                            Text(
                              "Your new recipient",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kwhite,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///////////////////////////////////////////////////////////// Enter Details here Container   //////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(
                      top: height1 * 0.015,
                    ),
                    child: Container(
                      height: height1 * 0.82,
                      width: width1 - 40,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          //color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 15,
                                spreadRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25, vertical: height1 * 0.018),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeAnimation(
                                  1.2,
                                  Text(
                                    "Your new recipient",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kdark_purple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                FadeAnimation(
                                  1.3,
                                  Container(
                                    height: 3,
                                    width: 178,
                                    color: kdark_purple,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: height1 * 0.63,
                              //color: Colors.yellow,
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.zero,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: height1 * 0.15,
                                  ),
                                  child: Column(
                                    children: [
                                      // SizedBox(height: width1*0.05,),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.4,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon: "assets/icons/f_name.png",
                                            label: "First Name",
                                            type: TextInputType.text,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.5,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon: "assets/icons/f_name.png",
                                            label: "Last Name",
                                            type: TextInputType.text,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.6,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon: "assets/icons/email.png",
                                            label: "Email",
                                            type: TextInputType.emailAddress,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.7,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon:
                                                "assets/icons/smart_phone.png",
                                            label: "Mobile +123 12345678",
                                            type: TextInputType.phone,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.8,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon: "assets/icons/city.png",
                                            label: "City/Town",
                                            type: TextInputType.text,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          1.9,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon:
                                                "assets/icons/bank_transfer.png",
                                            label: "Bank",
                                            type: TextInputType.number,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height1 * 0.018,
                                        ),
                                        child: FadeAnimation(
                                          2,
                                          RecipientFieldWidget(
                                            myFocusNode: myFocusNode,
                                            icon: "assets/icons/account_no.png",
                                            label: "Account Number",
                                            type: TextInputType.number,
                                            dropdown: null,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(YouSendFund(true, true));
                              },
                              child: FadeAnimation(
                                2.1,
                                Container(
                                  height: 54,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: <Color>[kdark_purple, kpurple],
                                    ),
                                    borderRadius: BorderRadius.circular(3),
                                    boxShadow: [
                                      BoxShadow(
                                        color: kgrey.withOpacity(0.4),
                                        blurRadius: 6,
                                        spreadRadius: 2,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: FadeAnimation(
                                      2.2,
                                      Text(
                                        "Add",
                                        style: TextStyle(
                                          color: kwhite,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500,
                                          //fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          topNavigation: null),
    );
  }
}

class RecipientFieldWidget extends StatelessWidget {
  RecipientFieldWidget({
    Key key,
    @required this.myFocusNode,
    @required this.icon,
    @required this.label,
    @required this.type,
    @required this.dropdown,
  }) : super(key: key);

  final FocusNode myFocusNode;
  String icon;
  String label;
  TextInputType type;
  Icon dropdown;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kpurple,
      keyboardType: type,
      decoration: InputDecoration(
        suffixIcon: dropdown,
        prefixIcon: Image.asset(
          icon,
          scale: icon == "assets/icons/smart_phone.png" ? 14 : 1.1,
          color: icon == "assets/icons/smart_phone.png" ? kgrey : null,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kdark_purple,
            //color: kpurple
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.7, color: kdark_purple),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        contentPadding: EdgeInsets.all(20),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 16,
          color: kdark_purple,
        ),
      ),
    );
  }
}
