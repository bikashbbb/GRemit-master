import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/transfer_created.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/base-template/medium_oval_background.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'desposit_to_bank.dart';

class PayMethod extends StatefulWidget {



  @override
  _PayMethodState createState() => _PayMethodState();
}

class _PayMethodState extends State<PayMethod> {

  bool got_it = false;
  final int radioValue=0;

  @override
  Widget build(BuildContext context) {

    var height1 = MediaQuery
        .of(context)
        .size
        .height;
    var width1 = MediaQuery
        .of(context)
        .size
        .width;
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;

    return Scaffold(

      body: BackgroundWidget(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding:  EdgeInsets.only(bottom:width1*.17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child:Padding(
                      padding:EdgeInsets.only(top: width1*0.1, left:width1*0.04,right:width1*0.04  ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                             Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size:32,
                              color: kwhite,
                            ),
                          ),
                          SizedBox(height: 5,),
                          FadeAnimation(1.1,
                            Text("How would you like to",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kwhite,
                                fontSize: 25,
                              ),
                            ),),
                          FadeAnimation(1.2,
                            Text("pay?",
                              style: TextStyle(
                                color: kwhite,
                                fontWeight:FontWeight.bold ,
                                fontSize: 25,
                              ),
                            ),
                          ),


                          ///////////////////////////////////////////////////// Method Container     ////////////////////////////////////
                          Padding(
                            padding:  EdgeInsets.only(top:width1*0.02,),
                            child: Container(
                              height: width1,
                              width: width1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                //color: Colors.red,
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
                                  padding:  EdgeInsets.symmetric(vertical:width1*0.02),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left:14),
                                        child:     FadeAnimation(1.3,Text("Methods",
                                          style: TextStyle(
                                            color: kdark_purple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21,
                                          ),
                                        ),),
                                      ),
                                      Divider(
                                        color: Colors.grey.withOpacity(0.4),
                                        thickness: 1.0,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: width1*0.02,),
                                        child:GestureDetector(
                                          onTap: (){
                                            Get.to(TransferCreated());
                                          },
                                          child:     FadeAnimation(1.4,Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal:width1*0.01),
                                                child: Text('Debit Card/Credit Card',
                                                style: TextStyle(
                                                  fontSize: 23,
                                                  color: kgrey,
                                                ),
                                                ),
                                              ),
                                              SizedBox(height:7 ,),
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal:width1*0.01),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                     width: width1*0.7,
                                                      child: Text(
                                                        "When you use a credit card your bank may charges advance fees.Use a debit card to avoid these charges",
                                                        style: TextStyle(
                                                         color: kgrey.withOpacity(0.9),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                    Icon(Icons.arrow_right,
                                                    size: 50,
                                                      color: kdark_purple,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),),
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey.withOpacity(0.4),
                                        thickness: 1.0,
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: width1*0.02,bottom: width1*0.02),
                                        child:    FadeAnimation(1.5,Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal:width1*0.01),
                                              child: Text('Online Bank Transfer',
                                                style: TextStyle(
                                                  fontSize: 23,
                                                  color: kgrey,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height:7 ,),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal:width1*0.01),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    width: width1*0.7,
                                                    child: Text(
                                                      "Pay now from your bank account.Your transaction will complete as soon as  your payment reflects on your account",
                                                      style: TextStyle(
                                                        color: kgrey.withOpacity(0.9),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(Icons.arrow_right,
                                                    size: 50,
                                                    color: kdark_purple,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),),
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
                          ),
                          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                          Padding(
                            padding:  EdgeInsets.only(top:width1*0.07,),
                            child: Container(
                              height: width1*0.36,
                              width: width1*0.92,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                               // color: Colors.red,
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
                                  padding:  EdgeInsets.symmetric(vertical:width1*0.02,horizontal:width1*0.02 ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FadeAnimation(1.6,Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                       Image.asset("assets/icons/paypal.png",),
                                          SizedBox(width:10),
                                          Text(
                                            "Paypal",
                                            style: TextStyle(
                                              color: kgrey,
                                              fontSize: 23,
                                            ),
                                          ),
                                        ],
                                      ),),
                                      FadeAnimation(1.7,Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset("assets/icons/moneygram.png",),
                                          SizedBox(width:10),
                                          Text(
                                            "MoneyGram",
                                            style: TextStyle(
                                              color: kgrey,
                                              fontSize: 23,
                                            ),
                                          ),
                                        ],
                                      ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),








                        ],
                      ),
                    ),
                  ),
                  ///////////////////////////////////////////////////////// Total to pay at bottom  /////////////////////////
                ],
              ),
            ),
          ),
        ),
        topNavigation:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 80,
            width: width1,
            decoration: BoxDecoration(
              color: kwhite,
              boxShadow: [
                BoxShadow(
                  color: kgrey.withOpacity(0.1),
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(0 , -2),
                ),
              ],
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: width1*0.036,vertical:width1*0.02),
              child:     FadeAnimation(1.8,
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total to pay",
                            style: TextStyle(
                              color: klight_black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "100,00 EUR",
                            style: TextStyle(
                              color: klight_black,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "See detail",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: kdark_purple,
                          fontSize: 18,
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              ),
            ),
          )

        ],
      ),
      ),
    );
  }

}




class RadioSelection extends StatelessWidget {
  RadioSelection({Key key, @required this.radioValue, @required this.text,@required this.image}) : super(key: key);

  final int radioValue;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    var height2=MediaQuery.of(context).size.height;
    var width2=MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:width2*0.018),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width2*0.72,
            //color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image, color:image== "assets/icons/mobile_transfer.png"?null :kblack,

                ),
                SizedBox(width: width2*0.1,),
                Text(text, style: TextStyle(fontSize: 20, color: Color(0xff707070)),),
              ],
            ),
          ),
          Theme(
            data: ThemeData(
                unselectedWidgetColor: Color(0xffAD4BD2)
            ),
            child: Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: null,
              activeColor:kpurple,
              // focusColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}







