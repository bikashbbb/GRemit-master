import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/background.dart';
//import 'package:gremit/dumy_3/home.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'package:gremit/Home/home.dart';


class TransferCreated extends StatefulWidget {
  @override
  _TransferCreatedState createState() => _TransferCreatedState();
}

class _TransferCreatedState extends State<TransferCreated> {
  List title = [
    "Transfer created",
    "Transfer on its way",
    "Transfer with our partner",
    "Transfer with recipient"
  ];

  List<bool> status = [true, false, false, false];

  List detail = [
    "Transfer 1244WGFS1234 created in our system",
    "Payment processing with / payment received by transaction app",
    "payment received by partner / forex agent ",
    "payment received by ,collected by or delivered to James Pill",
  ];

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: BackgroundWidget(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: width1 * 0.076,
                      left: width1 * 0.04,
                      right: width1 * 0.04),
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
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                        1.1,
                        Text(
                          "Your transfer has been ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kwhite,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      FadeAnimation(
                        1.2,
                        Text(
                          "created !",
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        height: height1 * 0.65,
                        width: width1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: width1 * 0.02, bottom: width1 * 0.02),
                                child: FadeAnimation(
                                  1.3,
                                  Text(
                                    "James Pill will receive:",
                                    style: TextStyle(
                                      color: kblack,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.4,
                                Text(
                                  "1,00sdfsd USD",
                                  style: TextStyle(
                                    color: kdark_purple,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: width1 * .02),
                                child: Container(
                                  height: height1 * 0.5,
                                  width: width1,
                                  //color:Colors.green,
                                  child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: title.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.0, bottom: 0),
                                          child: FadeAnimation(
                                            1.5,
                                            Container(
                                              //color: Colors.yellow,
                                              height: width1 * 0.2,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: status[
                                                                      index] ==
                                                                  true
                                                              ? kdark_purple
                                                              : kgrey
                                                                  .withOpacity(
                                                                      0.8),
                                                        ),
                                                      ),
                                                      title[index] ==
                                                              "Transfer with recipient"
                                                          ? Container()
                                                          : Container(
                                                              height:
                                                                  width1 * 0.2 -
                                                                      20,
                                                              width: 2,
                                                              color: status[
                                                                          index] ==
                                                                      true
                                                                  ? kdark_purple
                                                                  : kgrey
                                                                      .withOpacity(
                                                                          0.8),
                                                            )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 14,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      //color: Colors.green,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            title[index],
                                                            style: TextStyle(
                                                              color: status[
                                                                          index] ==
                                                                      true
                                                                  ? kdark_purple
                                                                  : kblack
                                                                      .withOpacity(
                                                                          0.8),
                                                              fontSize: 22,
                                                            ),
                                                          ),
                                                          Text(
                                                            detail[index],
                                                            style: TextStyle(
                                                              color: kgrey,
                                                              fontSize: 13,
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
                                        );
                                      }),
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
              ///////////////////////////////////////////////////////// Total to pay at bottom  /////////////////////////
              GestureDetector(
                onTap: () {
                  //Get.to(Home());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: FadeAnimation(
                    1.7,
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
                          1.8,
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
              )
            ],
          ),
        ),
        topNavigation: null,
      ),
    );
  }
}

class RadioSelection extends StatelessWidget {
  RadioSelection(
      {Key key,
      @required this.radioValue,
      @required this.text,
      @required this.image})
      : super(key: key);

  final int radioValue;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    var height2 = MediaQuery.of(context).size.height;
    var width2 = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width2 * 0.018),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width2 * 0.72,
            //color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  color: image == "assets/icons/mobile_transfer.png"
                      ? null
                      : kblack,
                ),
                SizedBox(
                  width: width2 * 0.1,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20, color: Color(0xff707070)),
                ),
              ],
            ),
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xffAD4BD2)),
            child: Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: null,
              activeColor: kpurple,
              // focusColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
