import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'find_my_transfer.dart';
import 'package:get/get.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List amount = ['100', '200', '500', '1000', '1500', '2000'];

  List profile_pic = [
    'assets/member_1.jpg',
    'assets/member_9.jpg',
    'assets/member_2.jpg',
    'assets/member_8.jpg',
    'assets/member_3.jpg',
    'assets/member_7.jpg',
    'assets/member_4.jpg',
    'assets/member_6.jpg',
    'assets/member_5.jpg',
  ];

  List activity = [
    "Paid ",
    "Receive from ",
    "Paid ",
    "Paid ",
    "Receive from ",
    "Paid ",
    "Receive from ",
    "Paid ",
    "Receive from ",
  ];

  List purpose = [
    'for a medical campaign',
    'Philips Ben',
    'for educational campaign',
    'for educational campaign',
    'Robert',
    'for a medical campaign',
    'Philips Ben',
    'for educational campaign',
    'Philips Ben',
  ];

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: BackgroundSmallOval(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(height: height1 * 0.16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height1 * 0.19),
                    ////////////////////////////// Recent Activity  ///////////////////////////////
                    Container(
                      padding: EdgeInsets.zero,
                      height: height1 * 0.71,
                      width: width1,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: BouncingScrollPhysics(),
                          itemCount: profile_pic.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(10, 2, 1, 7),
                              child: Column(
                                children: [
                                  FadeAnimation(
                                    1.3,
                                    Container(
                                        height: width1 * 0.25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: width1 * 0.21,
                                              width: width1 * 0.21,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      profile_pic[index],
                                                    ),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: width1 * 0.01,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: width1 * 0.04),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        activity[index],
                                                        style: TextStyle(
                                                          color: krest_passwrod
                                                              .withOpacity(0.9),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Text(
                                                        purpose[index],
                                                        style: TextStyle(
                                                          color: kblue,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "18 h",
                                                        style: TextStyle(
                                                          color: krest_passwrod
                                                              .withOpacity(0.9),
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: width1 * 0.01,
                                                      ),
                                                      Image.asset(
                                                        'assets/home/world.png',
                                                      ),
                                                    ],
                                                  ),
                                                  // SizedBox(width: width1*0.04,),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.favorite_border,
                                                        size: 20,
                                                        color: krest_passwrod
                                                            .withOpacity(0.9),
                                                      ),
                                                      SizedBox(
                                                        width: width1 * 0.04,
                                                      ),
                                                      Icon(
                                                        Icons.messenger_outline,
                                                        size: 18,
                                                        color: krest_passwrod
                                                            .withOpacity(0.9),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width1 * 0.25),
                                    child: Container(
                                      height: 1,
                                      width: width1 * 0.7,
                                      color: krest_passwrod,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    ///////////////////////////////        END           ////////////////////////////////
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(FindMyTransfer());
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
                        1.4,
                        Text(
                          "Find new transfer",
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
              ],
            ),
          ),
        ),
        topNavigation: Padding(
          padding: EdgeInsets.only(top: height1 * 0.06, left: width1 * 0.04),
          child: FadeAnimation(
            1.1,
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: kwhite,
                  ),
                ),
                SizedBox(
                  width: width1 * 0.03,
                ),
                Text(
                  "Recent Activity",
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
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
