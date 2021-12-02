import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';

class Withdraw extends StatefulWidget {
  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: height1 * 0.25),
              ],
            ),
          ),
        ),
        topNavigation: Padding(
          padding: EdgeInsets.only(top: height1 * 0.06, left: width1 * 0.04),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 36,
                  color: kwhite,
                ),
              ),
              SizedBox(
                width: width1 * 0.03,
              ),
              Text(
                "Withdraw",
                style: TextStyle(
                  color: kwhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
