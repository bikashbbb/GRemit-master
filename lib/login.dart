import 'dart:convert';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/remember_device.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'Screens/otp_for_rest.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Login2 extends StatefulWidget {
  static String serverurl = 'https://gremitapi.herokuapp.com';

  static sendotp(email) async {
    // send request
    var clietn = http.Client();
    var response = await clietn.post(
        Uri.parse(serverurl + '/auth/register/sendotp'),
        body: {'email': email});
    if ((jsonDecode(response.body)['message']) ==
        'otp verification send at the email') {
      return true;
    }
    return false;
  }

  static dialogbox(
    BuildContext context,
    String title,
  ) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  title[0] != 'A'
                      ? Navigator.pop(context)
                      : // navigate to login page
                      Get.off(Login2());
                },
                child: Text(
                  title[0] == 'A' ? 'Login' : 'Try Again?',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        });
  }

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  static sendotp(String email) {}
// controllers
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  var mobilecontroller = TextEditingController();

  var namecontroller = TextEditingController();

  //////////////////////// copy Code  //////////////
  bool isSignupScreen = false;
  bool isMale = true;
  bool isRememberMe = false;

  String country_id;
  List<String> country = [
    "America",
    "Brazil",
    "Canada",
    "India",
    "Mongalia",
    "USA",
    "China",
    "Russia",
    "Germany"
  ];

  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    bool shouldCheck = false;

    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: height1,
          width: width1,
          child: Stack(
            children: [
              Positioned(
                child: Transform.translate(
                  offset: Offset(0.0, -MediaQuery.of(context).size.width / 2.1),
                  child: Transform.scale(
                    scale: 1.4,
                    child: Container(
                      height: width1,
                      width: width1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            kpurple,
                            kdark_purple,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height1 * 0.06,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width1 * 0.06,
                    top: height1 * 0.012,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        1.3,
                        Text(
                          "Welcome to G-remit ",
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
                    ],
                  ),
                ),
              ),
              //SizedBox(height: height1 * 0.01,),
              AnimatedPositioned(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceInOut,
                top: isSignupScreen ? 140 : 140,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 700),
                  curve: Curves.bounceInOut,
                  height: isSignupScreen ? height1 * 0.76 : height1 * 0.54,
                  padding: EdgeInsets.fromLTRB(20, 17, 20, 5),
                  width: MediaQuery.of(context).size.width - 40,
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
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSignupScreen = false;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Log In",
                                    style: TextStyle(
                                      fontSize: !isSignupScreen ? 25 : 23,
                                      fontWeight: FontWeight.bold,
                                      color: !isSignupScreen
                                          ? kdark_purple
                                          : kpurple,
                                    ),
                                  ),
                                  if (!isSignupScreen)
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      height: 3,
                                      width: 70,
                                      color: kdark_purple,
                                    )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSignupScreen = true;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: isSignupScreen ? 25 : 23,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen
                                          ? kdark_purple
                                          : kpurple,
                                    ),
                                  ),
                                  if (isSignupScreen)
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      height: 3,
                                      width: isSignupScreen ? 90 : 80,
                                      color: kdark_purple,
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                        if (isSignupScreen)
                          buildSignupSection(
                            context,
                            height1,
                            width1,
                          ),
                        if (!isSignupScreen)
                          buildSigninSection(
                            height1,
                            width1,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _friendsVal;

  Container buildSignupSection(
    BuildContext context,
    var height2,
    var width2,
  ) {
    List _friendsName = [
      'Algeria',
      'Angola',
      'Anguilla',
      'Antigua & Barbuda',
      'Argentina',
      'Armenia',
      'Australia',
      'Austria',
      'Azerbaijan',
      'Bahamas',
      'Bahrain',
      'Barbados',
      'Belarus',
      'Belgium',
      'Belize',
      'Bermuda',
      'Bolivia',
      'Botswana',
      'Brazil',
      'British Virgin Islands',
      'Brunei',
      'Bulgaria',
      'Canada',
      'Cayman Islands',
      'Chile',
      'China',
      'Colombia',
      'Costa Rica',
      'Croatia',
      'Cyprus',
      'Czech Republic',
      'Denmark',
      'Dominica',
      'Dominican Republic',
      'Ecuador',
      'Egypt',
      'El Salvador',
      'Estonia',
      'Finland',
      'France',
      'Germany',
      'Ghana',
      'Greece',
      'Grenada',
      'Guatemala',
      'Guyana',
      'Honduras',
      'Hong Kong',
      'Hungary',
      'Iceland',
      'India',
      'Indonesia',
      'Ireland',
      'Israel',
      'Italy',
      'Jamaica',
      'Japan',
      'Jordan',
      'Kazakhstan',
      'Kenya',
      'Kuwait',
      'Latvia',
      'Lebanon',
      'Lithuania',
      'Luxembourg',
      'Macau',
      'Macedonia',
      'Madagascar',
      'Malaysia',
      'Mali',
      'Republic of Malta',
      'Mauritius',
      'Mexico',
      'Montserrat',
      'Moldova',
      'Netherlands',
      'New Zealand',
      'Nicaragua',
      'Niger',
      'Nigeria',
      'Norway',
      'Oman',
      'Pakistan',
      'Panama',
      'Paraguay',
      'Peru',
      'Philippines',
      'Poland',
      'Portugal',
      'Qatar',
      'Romania',
      'Russia',
      'St. Kitts & Nevis',
      'St. Lucia',
      'St. Vincent & The Grenadines',
      'Saudi Arabia',
      'Senegal',
      'Singapore',
      'Slovakia',
      'Slovenia',
      'South Africa',
      'South Korea',
      'Spain',
      'Sri Lanka',
      'Suriname',
      'Sweden',
      'Switzerland',
      'Taiwan',
      'Tanzania',
      'Thailand',
      'Trinidad & Tobago',
      'Tunisia',
      'Turkey',
      'Turks & Caicos',
      'Uganda',
      'United Arab Emirates',
      'United Kingdom',
      'United States',
      'Uruguay',
      'Uzbekistan',
      'Venezuela',
      'Vietnam',
      'Yemen',
    ];

    /// country

    return Container(
      margin: EdgeInsets.only(top: height2 * 0.02),
      child: Column(
        children: [
          SizedBox(
            height: height2 * 0.02,
          ),
          FadeAnimation(
            1.5,
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 15, right: 5, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: kdark_purple,
                  width: 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/flag.png",
                    scale: 1.1,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      focusColor: Colors.white,
                      //isDense: true,
                      autofocus: false,
                      hint: Text(
                        "Select Country",
                        style: TextStyle(
                          fontSize: 16,
                          color: kdark_purple,
                        ),
                      ),

                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      //elevation: 5,
                      isExpanded: true,
                      style: TextStyle(
                        color: kdark_purple,
                      ),
                      value: _friendsVal,
                      onChanged: (value) {
                        setState(() {
                          _friendsVal = value;
                        });
                      },

                      items: _friendsName.map((value) {
                        //print("My Value $value");
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height2 * 0.018,
          ),
          FadeAnimation(
            1.7,
            buildTextField(MaterialCommunityIcons.lock_outline, "Name", false,
                true, false, TextInputType.text,
                controller: namecontroller),
          ),
          FadeAnimation(
            1.6,
            buildTextField(MaterialCommunityIcons.email_outline, "Email", false,
                true, false, TextInputType.emailAddress,
                controller: emailcontroller),
          ),
          SizedBox(
            height: height2 * 0.016,
          ),
          FadeAnimation(
            1.7,
            buildTextField(MaterialCommunityIcons.lock_outline, "Password",
                true, false, false, TextInputType.text,
                controller: passwordcontroller),
          ),
          SizedBox(
            height: height2 * 0.016,
          ),
          FadeAnimation(
            1.8,
            buildTextField(MaterialCommunityIcons.cellphone, "Mobile", false,
                false, false, TextInputType.phone,
                controller: mobilecontroller),
          ),
          SizedBox(
            height: height2 * 0.016,
          ),
          FadeAnimation(
            1.9,
            Container(
              //color: Colors.yellow,
              width: 300,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By submitting this form ,you accept our ",
                    style: TextStyle(color: kgrey),
                    children: [
                      TextSpan(
                        //recognizer: ,
                        text: "   Terms and Conditions",
                        style: TextStyle(
                            color: kpurple,
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: " and",
                        style: TextStyle(color: kgrey),
                      ),
                      TextSpan(
                        text: " Privacy Policy.",
                        style: TextStyle(
                            color: kpurple,
                            decoration: TextDecoration.underline),
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: height2 * 0.016,
          ),
          FadeAnimation(
            2,
            InkWell(
              onTap: () {
                signupclicked(context);
              },
              child: Container(
                height: 54,
                width: width2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[kdark_purple, kpurple],
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: kpurple.withOpacity(0.4),
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      isSIgnup ? CircularProgressIndicator() : SizedBox()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isSIgnup = false;
  signupclicked(context) async {
    if (emailcontroller.text == '' ||
        passwordcontroller.text == '' ||
        mobilecontroller.text == '' ||
        _friendsVal == null ||
        namecontroller.text == '') {
      Login2.dialogbox(context, 'Fields cannot be empty');
    } else {
      if (int.parse(mobilecontroller.text) < 10) {
        Login2.dialogbox(context, 'Invalid phone number');
      } else {
        setState(() {
          isSIgnup = true;
        });
        if (await Login2.sendotp(emailcontroller.text)) {
          // navigate
          Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
            return OTPForReset(
              email: emailcontroller.text,
              country: _friendsVal,
              name: namecontroller.text,
              password: passwordcontroller.text,
              phone: mobilecontroller.text,
            );
          }));
        } else {
          setState(() {
            isSIgnup = false;
          });
          Login2.dialogbox(context, 'invalid email adress !!');
        }
      }
    }
  }

//

  var isloginclicked = false;
// controllers
  var emailcontrolls = TextEditingController();
  var loginPass = TextEditingController();
  //
  var emc = TextEditingController(); //
  Container buildSigninSection(
    var height2,
    var width2,
  ) {
    bool isPasswordVisible_2 = true;

    return Container(
      margin: EdgeInsets.only(top: height2 * 0.02),
      child: Column(
        children: [
          SizedBox(
            height: height2 * 0.02,
          ),
          FadeAnimation(
              1.5,
              buildTextField(Icons.mail_outline, "Email", false, true, false,
                  TextInputType.text,
                  controller: emailcontrolls)),
          SizedBox(
            height: height2 * 0.02,
          ),
          FadeAnimation(
              1.6,
              buildTextField(MaterialCommunityIcons.lock_outline, "Password",
                  true, false, false, TextInputType.visiblePassword,
                  controller: loginPass)),
          SizedBox(
            height: height2 * 0.02,
          ),
          FadeAnimation(
            1.7,
            InkWell(
              onTap: () {
                //Get.to(RememberDevice());

                if (emailcontrolls.text == '' || loginPass.text == '') {
                  Login2.dialogbox(context, 'Fields cannot be empty');
                } else {
                  setState(() {
                    isloginclicked = true;
                  });
                  sendloginRequest();
                }
              },
              child: Container(
                height: 54,
                width: width2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[kdark_purple, kpurple],
                  ),
                  borderRadius: BorderRadius.circular(8),
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
                    1.8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log In ",
                          style: TextStyle(
                            color: kwhite,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        isloginclicked
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : SizedBox()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: width2 * 0.01,
          ),
          FadeAnimation(
              1.9,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      var isemailInvalid = false;
                      var isnextTapped = false;

                      showDialog(
                          context: context,
                          builder: (builder) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return AlertDialog(
                                  actions: [
                                    isemailInvalid
                                        ? Text(
                                            'invalid email',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        : SizedBox()
                                  ],
                                  content: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        isnextTapped = true;
                                      });

                                      if (await nexttaped()) {
                                        Get.to(OTPForReset(
                                          isrest: true,
                                          email: emc.text,
                                        ));
                                      } else {
                                        setState(() {
                                          isnextTapped = false;
                                          isemailInvalid = true;
                                        });
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'Next',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        isnextTapped
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6),
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.green,
                                                  strokeWidth: 1.0,
                                                ),
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                  ),
                                  title: TextField(
                                    controller: emc,
                                    decoration: InputDecoration(
                                        label: Text('Email adress')),
                                  ),
                                );
                              },
                            );
                          });

                      //Get.to();
                    },
                    child: Text("Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kdark_purple,
                        )),
                  )
                ],
              )),
        ],
      ),
    );
  }

  nexttaped() async {
    if (emc.text != '') {
      if (await Login2.sendotp(emc.text)) {
        return true;
      }
    }
    return false;
  }

  sendloginRequest() async {
    var client = http.Client();
    var response = await client.post(
        Uri.parse('https://gremitapi.herokuapp.com/login/'),
        body: {"username": emailcontrolls.text, "password": loginPass.text});
    setState(() {
      isloginclicked = false;
    });
    print(response.body);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print(body);
      Get.to(
        RememberDevice(body['userdata']['first_name'],
            body['userdata']['id'].toString(), body['userdata']['username']),
      );
    } else {
      Login2.dialogbox(context, 'Invalid email or password');
    }
  }

  Widget buildTextField(IconData icon, String labelText, bool isPassword,
      bool isEmail, bool isPasswordVisible, TextInputType input_type,
      {controller}) {
    bool PasswordAbsecure;

    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        // keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        cursorColor: kdark_purple,
        keyboardType: input_type,
        decoration: InputDecoration(
          suffixIcon: isPassword
              ? IconButton(
                  color: kgrey,
                  icon: isPasswordVisible
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                      PasswordAbsecure = isPasswordVisible;
                    });
                  },
                )
              : null,
          prefixIcon: Icon(
            icon,
            size: 25,
            color: kgrey.withOpacity(0.8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kdark_purple),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.7,
              color: kdark_purple,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          contentPadding: EdgeInsets.all(20),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 16,
            color: kdark_purple,
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }
}
