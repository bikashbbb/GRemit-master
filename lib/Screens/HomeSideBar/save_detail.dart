import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/remember_device.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class SaveDetail extends StatefulWidget {
  @override
  _SaveDetailState createState() => _SaveDetailState();
}

const MaterialColor _buttonTextColor = MaterialColor(0xffAD4BD2, <int, Color>{
  50: Color(0xff6910A0),
  100: Color(0xff6910A0),
  200: Color(0xff6910A0),
  300: Color(0xff6910A0),
  400: Color(0xff6910A0),
  500: Color(0xff6910A0),
  600: Color(0xff6910A0),
  700: Color(0xff6910A0),
  800: Color(0xff6910A0),
  900: Color(0xff6910A0),
});

class _SaveDetailState extends State<SaveDetail> {
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

    return Scaffold(
      body: BackgroundWidget(
          topContainer: true,
          topLogo: false,
          contentScreen: Container(
            height: height1,
            width: width1,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: height1 * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width1 * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1.1,
                          Text(
                            "Please complete your registration",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kwhite,
                              fontSize: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height1 * 0.012,
                        ),
                        FadeAnimation(
                          1.2,
                          Text(
                            "You'll only need to do this one time.Once your account is verified,future transfer will be processed instantly",
                            style: TextStyle(
                              //fontWeight: FontWeight.w300,
                              color: kwhite,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height1 * 0.02,
                  ),

                  ////////////////////////////////////////////////////////////// Complete Registration Field   ////////////////////////
                  Container(
                    height: height1 * 0.72,
                    width: width1 - 40,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: width1 * 0.05,
                              ),
                              Column(
                                children: [
                                  FadeAnimation(
                                    1.3,
                                    TextFormField(
                                      cursorColor: kgrey,
                                      onTap: () {
                                        setState(() {
                                          selectDate(context);
                                        });
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Date of Birth",
                                        labelStyle: TextStyle(
                                          color: kdark_purple,
                                          fontSize: 16,
                                        ),
                                        hintText: ("${_date.toLocal()}"
                                            .split(' ')[0]),
                                        prefixIcon: Icon(
                                          Icons.calendar_today_outlined,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.7, color: kdark_purple),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: kdark_purple),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height1 * 0.018,
                                ),
                                child: FadeAnimation(
                                  1.5,
                                  RegistrationField(
                                      icons: Icons.person,
                                      label: "Gender",
                                      input_type: TextInputType.text),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height1 * 0.018),
                                child: FadeAnimation(
                                  1.6,
                                  RegistrationField(
                                      icons: MaterialCommunityIcons.cellphone,
                                      label: "Mobile",
                                      input_type: TextInputType.phone),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height1 * 0.018),
                                child: FadeAnimation(
                                  1.7,
                                  RegistrationField(
                                      icons: Icons.phone,
                                      label: "Phone",
                                      input_type: TextInputType.phone),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height1 * 0.02),
                                child: FadeAnimation(
                                  1.8,
                                  RegistrationField(
                                      icons: Icons.location_city_sharp,
                                      label: "Address",
                                      input_type: TextInputType.name),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: FadeAnimation(
                              1.9,
                              Container(
                                height: 54,
                                width: width1 * 0.77,
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
                                    2,
                                    Text(
                                      "Save Detail",
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
                          ),
                        ],
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

class RegistrationField extends StatelessWidget {
  RegistrationField(
      {Key key,
      @required this.icons,
      @required this.label,
      @required this.input_type})
      : super(key: key);

  IconData icons;
  String label;
  TextInputType input_type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kdark_purple,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icons,
          //Icons.person,
          size: 25,
          color: kgrey.withOpacity(0.8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kdark_purple),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          //width: 2,
          borderSide: BorderSide(width: 1.7, color: kdark_purple),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        contentPadding: EdgeInsets.all(20),
        //labelText:"Gender",
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 16,
          color: kdark_purple,
        ),
      ),
    );
  }
}
