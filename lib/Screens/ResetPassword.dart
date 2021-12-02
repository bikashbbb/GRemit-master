import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/login.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ResetPassword extends StatefulWidget {
  String email;
  ResetPassword(this.email);
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool isPasswordVisible = true;
  bool isPasswordVisible_2 = true;
  var pass1 = TextEditingController();
  var pass2 = TextEditingController();
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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: width1 * 0.05),
              child: Column(
                children: [
                  SizedBox(
                    height: height1 * 0.14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeAnimation(
                        1.1,
                        Image.asset("assets/reset_pass.png"),
                      ),
                      SizedBox(
                        height: height1 * 0.05,
                      ),
                      FadeAnimation(
                        1.2,
                        Text(
                          "Reset Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kdark_purple,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.07,
                      ),
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: width1 * 0.05),
                              child: FadeAnimation(
                                1.3,
                                TextFormField(
                                  controller: pass1,
                                  cursorColor: kdark_purple,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      color: isPasswordVisible
                                          ? kgrey
                                          : kdark_purple,
                                      icon: isPasswordVisible
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          print("Hello Qaim");
                                          print(!isPasswordVisible);
                                          print("..........");
                                          isPasswordVisible =
                                              !isPasswordVisible;
                                          print("/////////////");
                                          print(isPasswordVisible);
                                          print("/////////////");
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: kdark_purple),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.7,
                                        color: kdark_purple,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(20),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      color: kdark_purple,
                                    ),
                                  ),
                                  obscureText: isPasswordVisible,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: FadeAnimation(
                                1.4,
                                TextFormField(
                                  controller: pass2,
                                  cursorColor: kdark_purple,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      color: isPasswordVisible_2
                                          ? kgrey
                                          : kdark_purple,
                                      icon: isPasswordVisible_2
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          print("Hello Qaim");
                                          print(!isPasswordVisible);
                                          print("..........");
                                          isPasswordVisible_2 =
                                              !isPasswordVisible_2;
                                          print("/////////////");
                                          print(isPasswordVisible);
                                          print("/////////////");
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: kdark_purple),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1.7, color: kdark_purple),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(20),
                                    labelText: " Confirm Password",
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      color: kdark_purple,
                                    ),
                                  ),
                                  obscureText: isPasswordVisible_2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: width1 * 0.18,
                      ),
                    ],
                  ),
                  FadeAnimation(
                    1.5,
                    InkWell(
                      onTap: () async {
                        if (pass1.text != pass2.text) {
                          Login2.dialogbox(context, 'passwords must be equal');
                        } else {
                          setState(() {
                            isResetTapped = true;
                          });
                          await resetPassword();
                          setState(() {
                            isResetTapped = false;
                          });
                        }
                      },
                      child: Container(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeAnimation(
                              1.6,
                              Text(
                                "Reset",
                                style: TextStyle(
                                  color: kwhite,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            isResetTapped
                                ? CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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

  //
  bool isResetTapped = false;

  resetPassword() async {
    print('lado');
    // reset password
    var client = http.Client();
    var response = await client.post(
        Uri.http('gremitapi.herokuapp.com', '/Forgotpassword/newpassword/'),
        body: {"username": widget.email, "password": pass1.text});
    if (response.statusCode == 202) {
      Login2.dialogbox(context, 'Account password reset sucessfull');
    } else {
      Login2.dialogbox(context, 'Invalid email id');
    }
  }
}
