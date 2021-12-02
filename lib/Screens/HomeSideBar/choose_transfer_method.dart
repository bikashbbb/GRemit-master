import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'desposit_to_bank.dart';

class ChooseTransferMethod extends StatefulWidget {
  @override
  _ChooseTransferMethodState createState() => _ChooseTransferMethodState();
}

class _ChooseTransferMethodState extends State<ChooseTransferMethod> {
  bool got_it = false;
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
                    EdgeInsets.only(left: width1 * 0.06, top: width1 * 0.1),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: kwhite,
                        ),
                      ),
                      // SizedBox(height: 5,),
                      FadeAnimation(
                        1.1,
                        Text(
                          "How would your recipient",
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
                          "like to receive money?",
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
                    padding: EdgeInsets.symmetric(vertical: width1 * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Divider(
                          color: Colors.grey.withOpacity(0.4),
                          thickness: 1.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(DepositToBank());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: width1 * 0.02, bottom: width1 * 0.02),
                            child: FadeAnimation(
                              1.4,
                              RadioSelection(
                                  radioValue: radioValue,
                                  text: 'Bank Transfer',
                                  image: "assets/icons/bank_transfer.png"),
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
                                text: 'Agent transfer',
                                image: "assets/icons/agent_transfer.png"),
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
                                    text: 'Mobile Money Transfer',
                                    image: "assets/icons/mobile_transfer.png"),
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

/*



import 'package:flutter/material.dart';

class BankReceipient extends StatelessWidget {
  const BankReceipient({Key? key}) : super(key: key);

  final int radioValue=0;


  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: height1*0.6,
          width: width1*0.88,
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
            child: Column(
              children: [

                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                  thickness: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: RadioSelectionWithoutIcon(radioValue: radioValue, text: 'Bank Transfer',),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                  thickness: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                  child: RadioSelectionWithoutIcon(radioValue: radioValue, text: 'Agent transfer', ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                  thickness: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioSelectionWithoutIcon(radioValue: radioValue, text: 'Mobile Money Transfer', ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Up to 1,00,00 USD', style: TextStyle(fontSize: 18, color: Color(0xff707070)) ),
                      )
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
    );
  }
}

*/

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
      padding: EdgeInsets.symmetric(horizontal: width2 * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width2 * 0.7,
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
                  width: width2 * 0.07,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff707070),
                  ),
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
