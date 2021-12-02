import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Home/home.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class TransferStatus extends StatefulWidget {
  @override
  _TransferStatusState createState() => _TransferStatusState();
}

class _TransferStatusState extends State<TransferStatus> {
  List title = [
    "Transfer created",
    "We've received your payment",
    "Local partner processing transfer",
    "Recipient receives USD"
  ];

  List<bool> status = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
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
              "Transfer status",
              style: TextStyle(
                color: kwhite,
                fontSize: 21,
              ),
            ),
          ),
          backgroundColor: kpurple,
          //centerTitle: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: width1 * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1.2,
                    Text(
                      "Sending 1,00 USD to",
                      style: TextStyle(
                        color: kheading,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: width1 * 0.01,
                  ),
                  FadeAnimation(
                    1.3,
                    Text(
                      "James Pill",
                      style: TextStyle(
                        color: kheading,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: width1 * 0.08,
                  ),
                  Container(
                    height: height1 * 0.4,
                    width: width1,
                    //color: Colors.yellow,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: title.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: 8.0, bottom: 0),
                              child: Container(
                                height: width1 * 0.2,
                                child: FadeAnimation(
                                  1.4,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 70,
                                        // color: Colors.red,
                                        child: Row(
                                          children: [
                                            Text(
                                              "Aug ",
                                              style: TextStyle(
                                                color: krest_passwrod,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              "12",
                                              style: TextStyle(
                                                color: krest_passwrod,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: status[index] == true
                                                  ? kdark_purple
                                                  : kgrey.withOpacity(0.8),
                                            ),
                                          ),
                                          title[index] ==
                                                  "Recipient receives USD"
                                              ? Container()
                                              : Container(
                                                  height: width1 * 0.2 - 20,
                                                  width: 2,
                                                  color: status[index] == true
                                                      ? kdark_purple
                                                      : kgrey.withOpacity(0.8),
                                                )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Text(
                                            title[index],
                                            style: TextStyle(
                                              color: status[index] == true
                                                  ? kdark_purple
                                                  : kgrey,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
               // Get.to(Home());
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
                        "Done",
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
          ],
        ),
      ),
    );
  }
}
