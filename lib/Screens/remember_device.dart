import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/Home/home.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'package:gremit/Animation/FadeAnimation.dart';

class RememberDevice extends StatefulWidget {
  String name;
  String email;
  String gremitId;
  RememberDevice(this.name, this.gremitId, this.email);
  @override
  _RememberDeviceState createState() => _RememberDeviceState();
}

class _RememberDeviceState extends State<RememberDevice> {
  bool isPasswordVisible = true;
  bool isPasswordVisible_2 = true;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height1 * 0.14,
                ),
                FadeAnimation(
                  1.1,
                  Image.asset("assets/remember.png"),
                ),
                SizedBox(
                  height: height1 * 0.05,
                ),
                FadeAnimation(
                  1.2,
                  Text(
                    "Remember this device?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff791AAA),
                      fontSize: width1 * 0.07,
                    ),
                  ),
                ),
                SizedBox(
                  height: width1 * 0.07,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: width1 * 0.00),
                  //color: Colors.yellow,
                  width: width1 * 0.86,
                  child: Center(
                    child: FadeAnimation(
                      1.3,
                      Text(
                        "If you are using this device a lot and don't want to enter a code next time, you may want G-remit to remember it, if this is your friend device, you may not want to do that ",
                        style: TextStyle(
                          fontSize: 18,
                          color: krest_passwrod.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: width1 * 0.07,
                ),
                FadeAnimation(
                  1.4,
                  Text(
                    "You can change this at anytime in settings",
                    style: TextStyle(
                      fontSize: 17,
                      color: krest_passwrod.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: height1 * 0.1,
                ),
                GestureDetector(
                  onTap: () {
                    // save the details first

                    Get.to(Home(widget.name, widget.gremitId, widget.email));
                  },
                  child: FadeAnimation(
                    1.5,
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
                          1.6,
                          Text(
                            "Remember Device",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: width1 * 0.07,
                ),
                FadeAnimation(
                  1.7,
                  Text(
                    "Not now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: kdark_purple,
                    ),
                  ),
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
}
