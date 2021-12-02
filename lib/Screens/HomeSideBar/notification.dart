import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotification extends StatefulWidget {
  @override
  _MyNotificationState createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  List amount = ['100', '200', '500', '1000', '1500', '2000'];
  List purpose = [
    'Family',
    'Friend',
    'Donation',
    'other',
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
          child: Column(
            children: [
              SizedBox(
                height: width1 * 0.34,
              ),
              ////////////////////////////// Amount List Container  ///////////////////////////////
              Container(
                height: height1 - width1 * 0.34,
                width: width1,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    //scrollDirection: Axis.horizontal,
                    itemCount: amount.length,
                    itemBuilder: (conext, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(7, 15, 7, 2),
                        child: Container(
                            height: 100,
                            width: width1 * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              //color: Colors.green,
                              color: kwhite,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 1),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8.0, 14, 0, 5),
                              child: FadeAnimation(
                                1.1,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Successfully Completed",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 19,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: width1 - 100,
                                          child: Text(
                                            "Your medical campaign is completed successfully",
                                            style: TextStyle(
                                              color: krest_passwrod,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "21",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: krest_passwrod),
                                        ),
                                        Text(
                                          " min",
                                          style: TextStyle(
                                            color: krest_passwrod,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
                    }),
              ),
            ],
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
                  "Notification",
                  style: GoogleFonts.poppins(
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
