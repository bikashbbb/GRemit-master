import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/save_detail.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class CompleteYourRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0), // here the desired height
            child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[kdark_purple, kpurple],
                  ),
                ),
              ),
              title: FadeAnimation(
                1.1,
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ),
              backgroundColor: kpurple,
              //centerTitle: true,
            )),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: width1 * 0.03,
                        ),
                        FadeAnimation(
                          1.2,
                          Image(
                            image: AssetImage(
                              "assets/home/com_regist.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width1 * 0.05,
                        ),
                        FadeAnimation(
                          1.3,
                          Text(
                            "Completer your",
                            style: TextStyle(
                              color: kheading,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width1 * 0.005,
                        ),
                        FadeAnimation(
                          1.4,
                          Text(
                            "registration",
                            style: TextStyle(
                              color: kheading,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height1 * 0.03,
                        ),
                        Container(
                          width: width1,
                          //color: Colors.yellow,
                          child: Column(
                            children: [
                              FadeAnimation(
                                1.5,
                                Text(
                                  "Lets get yourself registered so you can send money safely and securely.",
                                  style: TextStyle(
                                    color: Color(0xff616161).withOpacity(0.9),
                                    //color: Color(0xff616161),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: width1 * 0.05,
                        ),
                        Container(
                          height: 120,
                          width: width1,

                          ///color: Colors.yellow,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FadeAnimation(
                                  1.6,
                                  Text(
                                    "This should take few minutes and you'll be able to view and edit the   information once completed ",
                                    style: TextStyle(
                                      color: Color(0xff616161).withOpacity(0.9),
                                      fontSize: 18,
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
                FadeAnimation(
                  1.7,
                  GestureDetector(
                    onTap: () {
                      Get.to(SaveDetail());
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
                      child: Center(
                        child: FadeAnimation(
                          1.8,
                          Text(
                            "Get started",
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
      ),
    );
  }
}
