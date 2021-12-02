import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/login.dart';
import 'package:gremit/theme/colors.dart';
import 'ResetPassword.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OTPForReset extends StatefulWidget {
  var email;
  var country;
  var phone;
  var password;
  var name;
  var isrest;

  OTPForReset(
      {this.email,
      this.country,
      this.name,
      this.password,
      this.phone,
      this.isrest = false});

  @override
  _OTPForResetState createState() => _OTPForResetState();
}

class _OTPForResetState extends State<OTPForReset> {
  var inputotp;
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: BackgroundWidget(
        topContainer: false,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: height1 * 0.14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeAnimation(
                      1.3,
                      Image.asset("assets/reset_pass.png"),
                    ),
                    SizedBox(
                      height: height1 * 0.05,
                    ),
                    widget.isrest
                        ? FadeAnimation(
                            1.4,
                            Text(
                              "Reset Password",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kdark_purple,
                                fontSize: 32,
                              ),
                            ),
                          )
                        : SizedBox(),
                    SizedBox(
                      height: width1 * 0.1,
                    ),
                    Column(
                      children: [
                        FadeAnimation(
                          1.5,
                          Text(
                            "Enter the code sent to your email ",
                            style: TextStyle(
                              color: krest_passwrod.withOpacity(0.8),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        widget.isrest
                            ? FadeAnimation(
                                1.6,
                                Text(
                                  "    address",
                                  style: TextStyle(
                                    color: krest_passwrod.withOpacity(0.8),
                                    fontSize: 21,
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: height1 * 0.05,
                    ),
                    FadeAnimation(
                      1.7,
                      Text(
                        "",
                        style: TextStyle(
                          color: kdark_purple,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width1 * 0.12,
                    ),
                    FadeAnimation(
                      1.8,
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width1 * 0.032),
                        child: OTPTextField(
                          //margin: EdgeInsets.symmetric(horizontal: 50),
                          length: 6,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 50,
                          fieldStyle: FieldStyle.box,
                          otpFieldStyle: OtpFieldStyle(
                              enabledBorderColor: kdark_purple,
                              errorBorderColor: Colors.red,
                              borderColor: kdark_purple),
                          outlineBorderRadius: 15,
                          style: TextStyle(fontSize: 17),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            setState(() {
                              inputotp = pin;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width1 * 0.18,
                    ),
                    InkWell(
                      onTap: () {
                        widget.isrest ? CheckresetPass() : checkotp();
                      },
                      child: FadeAnimation(
                        1.9,
                        Container(
                          height: 60,
                          width: width1 * 0.84,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Confirm",
                                    style: TextStyle(
                                      color: kwhite,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  isConfirmedclicked
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
                  ],
                ),
              ],
            ),
          ),
        ),
        topNavigation: Padding(
          padding: EdgeInsets.only(top: height1 * 0.06, left: width1 * 0.04),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: FadeAnimation(
              1,
              Icon(
                Icons.arrow_back,
                size: 36,
                color: kdark_purple,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void CheckresetPass() async {
    // check reset password if valid got to change password page
    print('here');
    setState(() {
      isConfirmedclicked = true;
    });
    var client = http.Client();
    var response = await client.post(
        Uri.parse('https://gremitapi.herokuapp.com/Forgotpassword/checkotp/'),
        body: {"email": widget.email, "otpCode": inputotp});
    if (response.statusCode == 201) {
      Get.off(ResetPassword(widget.email));
    } else {
      setState(() {
        isConfirmedclicked = false;
      });
      Login2.dialogbox(context, 'Invalid otp');
    }
  }

  var isConfirmedclicked = false;
  bool resnedotp = false;
  checkotp() async {
    setState(() {
      isConfirmedclicked = true;
    });
    var client = http.Client();

    var response = await client.post(
        Uri.parse('https://gremitapi.herokuapp.com/auth/checkotp/$inputotp'),
        body: {
          "username": widget.email, //widget.email,
          "phone_num": widget.phone,
          "password": widget.password,
          "country": widget.country,
          "first_name": widget.name
        });
    setState(() {
      isConfirmedclicked = false;
    });
    if (response.statusCode == 400) {
      resendotpDialog(context, 'Invalid otp');
    } else if (response.statusCode == 500) {
      Login2.dialogbox(
          context, 'Email already exists account couldnot be created');
    } else {
      Login2.dialogbox(context, 'Account created sucesfully');
    }
  }

  resendotpDialog(
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
                  setState(() {
                    resnedotp = true;
                  });
                  if (Login2.sendotp(widget.email)) {
                    Navigator.pop(context);
                  }
                },
                child: Row(
                  children: [
                    Text(
                      'Resend Otp code?',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    resnedotp ? CircularProgressIndicator() : SizedBox()
                  ],
                ),
              )
            ],
          );
        });
  }
}
