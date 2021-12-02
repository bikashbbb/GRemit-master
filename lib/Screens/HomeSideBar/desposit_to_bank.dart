import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/you_send_fund.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';


class DepositToBank extends StatefulWidget {
  @override
  _DepositToBankState createState() => _DepositToBankState();
}

class _DepositToBankState extends State<DepositToBank> {
  final int radioValue = 0;

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
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width1 * 0.06, top: width1 * 0.09),
                child: Align(
                  alignment: Alignment.topLeft,
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
                          "Which bank is your",
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
                          "recipient with?",
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: width1 * 0.07,
              ),
              Container(
                height: width1 * 0.9,
                width: width1 * 0.92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  //color: Colors.white,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: width1 * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                          thickness: 1.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(YouSendFund(true, false));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: width1 * 0.02, bottom: width1 * 0.02),
                            child: FadeAnimation(
                              1.4,
                              RadioSelection(
                                  radioValue: radioValue,
                                  text: 'Deposit to ABC bank'),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: width1 * 0.02, bottom: width1 * 0.02),
                          child: FadeAnimation(
                            1.6,
                            RadioSelection(
                              radioValue: radioValue,
                              text: 'Deposit to DEF bank',
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: width1 * 0.02, bottom: width1 * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeAnimation(
                                1.8,
                                RadioSelection(
                                  radioValue: radioValue,
                                  text: 'Deposit to GHI bank',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: FadeAnimation(
                                  1.9,
                                  Text(
                                    'Up to 1,00,00 USD',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff707070)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                          thickness: 1.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
      padding: EdgeInsets.symmetric(horizontal: width2 * 0.023),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 19, color: Color(0xff1A1A1A)),
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
