import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/pay_method.dart';
import 'package:gremit/base-template/medium_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'add_recipient.dart';
import 'choose_transfer_method.dart';

class YouSendFund extends StatefulWidget {

  bool deposit_to_bank;
  bool recipiet_added ;
  YouSendFund( this.deposit_to_bank ,this.recipiet_added);


  @override
  _YouSendFundState createState() => _YouSendFundState();
}

class _YouSendFundState extends State<YouSendFund> {


  List country_name=['Pakistan','United State','Germany','France','Pakistan','United State','Germany','France','Pakistan','United State','Germany','France',];

  List profile_pic = [
    'assets/country/pakistan.jpg',
    'assets/country/united_state.jpg',
    'assets/country/germany.jpg',
    'assets/country/france.jpg',
    'assets/country/pakistan.jpg',
    'assets/country/united_state.jpg',
    'assets/country/germany.jpg',
    'assets/country/france.jpg',
    'assets/country/pakistan.jpg',
    'assets/country/united_state.jpg',
    'assets/country/germany.jpg',
    'assets/country/france.jpg',
  ];

 bool got_it = false;
 final int radioValue=0;
 bool recipiet_record=false;

 @override
  void initState() {
   recipiet_record=widget.recipiet_added;
   print("Response $recipiet_record");

    super.initState();
  }


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

      body: MediumOval(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ////////////////////////////////  United State  ///////////////////////
                Align(
                  alignment: Alignment.topCenter,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //////////////////////////////////////////////////// Top Text   ///////////////////////////
                      Padding(
                        padding:EdgeInsets.only(top: width1*0.09, left:width1*0.04,right:width1*0.04  ),
                        child: FadeAnimation(1.1,Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size:32,
                                color: kwhite,
                              ),
                            ),
                            Text("United State",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: kwhite,
                                fontSize: 24,
                              ),
                            ),
                            Container(),
                          ],
                        ),),
                      ),
                      //////////////////////////////////////////////////////// Stepper  /////////////////////////
                      Padding(
                        padding:  EdgeInsets.only(left:width1*0.058,top: width1*0.01),
                        child: FadeAnimation(1.3,Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            stepper(width1: width1, title:"Amount", step:'1'),
                            stepper(width1: width1, title:"Payout", step:'2'),
                            stepper(width1: width1, title:"Recipient", ),
                            stepper(width1: width1, title:"Payment", ),
                          ],
                        ),),
                      ),


                      /////////////////////////////////////////////////////////////// Conversion Container  ////////////////////////
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: height1 * 0.09),
                          YouSendWidget(width1: width1,amount: '1,00', country_name: "EUR", image: 'assets/country/germany.jpg',),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:width1*0.05,vertical:width1*0.032),
                            child: FadeAnimation(1.4,Row(
                              children: [
                                Icon(Icons.arrow_upward,),
                                Icon(Icons.arrow_downward,),
                                SizedBox(width: 14,),
                                Text("1 EUR= 12.12345 USD",
                                  style: TextStyle(
                                    color:klight_black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),),
                          ),
                          YouSendWidget(width1: width1,amount: '12.12', country_name: "USD", image: 'assets/country/united_state.jpg',),
                        ],
                      ),

                      /////////////////////////////////////////////////////////////// Conversion Container End  ////////////////////////


                      ///////////////////////////////////////////////      Delivery detail text  ////////////////////////////
                     widget.deposit_to_bank==true ?     Container(
                       height: widget.recipiet_added?width1*0.63:height1*0.4,
                       width: width1,
                       child: SingleChildScrollView(
                         physics: BouncingScrollPhysics(),
                         child: Padding(
                           padding: EdgeInsets.all(10),
                           child: Padding(
                             padding:  EdgeInsets.only(bottom:width1*0.2,top: width1*0.02),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Divider(
                                   color: Colors.grey.withOpacity(0.4),
                                   thickness: 1.0,
                                 ),
                                 Padding(
                                   padding:  EdgeInsets.only(top: width1*0.018, bottom: width1*0.018,),
                                   child: DeliveryDetail(radioValue: radioValue, title:'Delivery Method' , detail: 'Bank Deposit', check_circl:true),
                                 ),
                                 Divider(
                                   color: Colors.grey.withOpacity(0.4),
                                   thickness: 1.0,
                                 ),
                                 Padding(
                                   padding:  EdgeInsets.only(top: width1*0.018, bottom: width1*0.018,),
                                   child: DeliveryDetail(radioValue: radioValue,title:'Bank', detail: 'ABC Bank',check_circl:true),
                                 ),
                                 Divider(
                                   color: Colors.grey.withOpacity(0.4),
                                   thickness: 1.0,
                                 ),
                                 GestureDetector(
                                   onTap: (){
                                     Get.to(AddRecipient());

                                   },
                                   child: Padding(
                                     padding: EdgeInsets.only(top: width1*0.018, bottom: width1*0.018,),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         DeliveryDetail(radioValue: radioValue,title:'Recipient', detail: 'Recipient',check_circl:widget.recipiet_added, ),
                                       ],
                                     ),
                                   ),
                                 ),
                                 Divider(
                                   color: Colors.grey.withOpacity(0.4),
                                   thickness: 1.0,
                                 ),
                                 widget.recipiet_added ? Padding(
                                   padding: EdgeInsets.only(top: width1*0.018, bottom: width1*0.03,),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       FadeAnimation(1.9,Text("Frequency",
                                       style: TextStyle(
                                         color: kdark_purple,
                                         fontSize: 18,
                                       ),
                                       ),),

                                       SizedBox(height: 12,),
                                       FadeAnimation(2,Container(
                                         height: 27,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(5),
                                           color: kwhite,
                                           border: Border.all(
                                             width: 1.7,
                                             color: kdark_purple
                                           ),
                                         ),
                                         child: Row(
                                           children: [
                                             Expanded(
                                               child: Container(

                                                 decoration: BoxDecoration(
                                                     color: kdark_purple,
                                                 borderRadius: BorderRadius.only(
                                                   topRight: Radius.circular(5),
                                                   bottomRight: Radius.circular(5),
                                                 )
                                                 ),
                                                 child: Center(
                                                   child: Text("Once",
                                                     style: TextStyle(
                                                       color: kwhite,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                             Expanded(
                                               child: Container(
                                                 color: kwhite,
                                                 child: Center(
                                                   child: Text("Monthly",
                                                     style: TextStyle(
                                                       color: kdark_purple,
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),),
                                     ],
                                   ),
                                 ):Container(),
                               ],
                             ),
                           ),
                         ),
                       ),
                       )

                     
                     
                     
                     
                     
                     
                     
                         :Container(),
                      got_it ?Padding(
                        padding: EdgeInsets.fromLTRB(width1*0.025,width1*0.07,width1*0.025,0),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(width1*0.01,10,width1*0.01,10),
                              child: FadeAnimation(1.4,Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //SizedBox(width: 20,),
                                  GestureDetector(
                                    onTap: (){
                                      Get.to(ChooseTransferMethod());
                                    },
                                    child: Text("Choose how to send",
                                      style: TextStyle(
                                        color: klight_black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                    color: kdark_purple,
                                    size: 25,
                                  )
                                ],
                              ),),
                            ),
                            Divider(color: kgrey, thickness: 1,),
                          ],
                        ),
                      ):Container()
                    ],
                  ),
                ),


                ////////////////////////////////////////////////////  Done Button/ Total to pay  ////////////////////////////
               /* got_it || widget.deposit_to_bank==true ? Container(
                  height: widget.recipiet_added ? width1*0.29:80,
                  width: width1,
                  decoration: BoxDecoration(
                    color:widget.recipiet_added ? kwhite: kwhite,
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
                    padding:  EdgeInsets.symmetric(
                        horizontal: width1*0.036,
                        vertical: widget.recipiet_added?width1*0.01 :width1*0.02
                    ),
                    child: Column(
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
                                color: kdark_purple,
                                fontSize: 18,
                              ),
                            ),

                          ],
                        ),
                        widget.recipiet_added ? GestureDetector(
                          onTap: (){
                            Get.to(PayMethod());
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(bottom:8.0),
                            child: Container(
                              height: 45,
                              width:width1*0.84,
                              decoration: BoxDecoration(
                                color: kpurple,
                                borderRadius: BorderRadius.circular(3),
                                boxShadow: [
                                  BoxShadow(
                                    color: kgrey.withOpacity(0.4),
                                    blurRadius: 6,
                                    spreadRadius: 2,
                                    offset: Offset(0,4),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text("Continue to payment",
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ):Container(),
                      ],
                    ),
                  ),
                )
                    : GestureDetector(
                  onTap: (){
                     _bottomSheet(context);
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(bottom:8.0),
                    child: Container(
                      height: 60,
                      width:width1*0.84,
                      decoration: BoxDecoration(
                        color: kpurple,
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: kgrey.withOpacity(0.4),
                            blurRadius: 6,
                            spreadRadius: 2,
                            offset: Offset(0,4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text("Done",
                          style: TextStyle(
                            color: kwhite,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                )*/
              ],
            ),
          ),
        ),
        topNavigation: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              got_it || widget.deposit_to_bank==true ? Container(
                height: widget.recipiet_added ? width1*0.32:80,
                width: width1,
                decoration: BoxDecoration(
                  color:widget.recipiet_added ? kwhite: kwhite,
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
                  padding:  EdgeInsets.symmetric(
                      horizontal: width1*0.036,
                      vertical: widget.recipiet_added?width1*0.001 :width1*0.02
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      widget.recipiet_added ? GestureDetector(
                        onTap: (){
                          Get.to(PayMethod());
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(bottom:8.0),
                          child: Container(
                            height: 45,
                            width:width1*0.84,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  kdark_purple,
                                  kpurple
                                ],
                              ),
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: [
                                BoxShadow(
                                  color: kgrey.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                  offset: Offset(0,4),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text("Continue to payment",
                                style: TextStyle(
                                  color: kwhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ):Container(),
                    ],
                  ),
                ),
              )
                  : GestureDetector(
                onTap: (){
                  _bottomSheet(context);
                },
                child: Padding(
                  padding:  EdgeInsets.only(bottom:8.0),
                  child: FadeAnimation(1.8,Container(
                    height: 60,
                    width:width1*0.84,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          kdark_purple,
                          kpurple
                        ],
                      ),
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: kgrey.withOpacity(0.4),
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: Offset(0,4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: FadeAnimation(1.9,Text("Done",
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),),
                    ),
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  ////////////////////////////////////////////////////////////////// Bottom Sheet //////////////////////////////////
  _bottomSheet(context){
   showModalBottomSheet(
       context: context,
       shape:  RoundedRectangleBorder(
           borderRadius: BorderRadius.only(
               topLeft: Radius.circular(30),
               topRight: Radius.circular(30))),

       builder: (BuildContext c ){
     var height2 = MediaQuery.of(context).size.height;
     var width2=   MediaQuery.of(context).size.width;

     return SingleChildScrollView(
       physics: BouncingScrollPhysics(),
       child: Padding(
         padding:  EdgeInsets.symmetric(horizontal:width2*0.03, vertical:width2*0.01),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
               Icon(Icons.cancel_outlined,
                 size: 32,
                 color:Color(0xff707070),
               ),
               ],
             ),
             SizedBox(height: width2*0.04,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text("You Send",
               style: TextStyle(
                 fontSize: 20,
                 color: Color(0xff939393),
               ),
               ),
                 Text("100,00 EUR",
                   style: TextStyle(
                     //fontWeight: FontWeight.w400,
                     fontSize: 20,
                       color: Color(0xff3A3A3A)
                   ),
                 ),
               ],
             ),
             SizedBox(height: width2*0.04,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Exchange rate",
                   style: TextStyle(
                     fontSize: 20,
                     color: Color(0xff939393),
                   ),
                 ),
                 Text("1 EUR=12.12345 USD",
                   style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontSize: 18,
                       color: Color(0xff3A3A3A)
                   ),
                 ),

               ],
             ),
             SizedBox(height: width2*0.04,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Fee",
                   style: TextStyle(
                     fontSize: 20,
                     color: kgrey,
                   ),
                 ),
                 Text("+ 2.99 EUR",
                   style: TextStyle(
                       fontSize: 18,
                       color: Color(0xff3A3A3A)
                   ),
                 ),

               ],
             ),
             SizedBox(height: width2*0.04,),
             Text("Add a promo code",
               style: TextStyle(
                 fontFamily: "Arial",
                 fontSize: 22,
                 fontWeight: FontWeight.w600,
                 color: Color(0xff6910A0),
               ),
             ),
             TextFormField(
               cursorColor: kdark_purple,
               style: TextStyle(color: kgrey),
               decoration: InputDecoration(
                 focusColor: kpurple,

               ),
             ),
             SizedBox(height: width2*0.02,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Total to pay",
                   style: TextStyle(
                     fontSize: 20,
                       color: klight_black,
                   ),
                 ),
                 Text("100,00 EUR",
                   style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontSize: 18,
                       color: Color(0xff3A3A3A)
                   ),
                 ),
               ],
             ),
             SizedBox(height: width2*0.02,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("They receive",
                   style: TextStyle(
                     fontSize: 18,
                       color: Color(0xff3A3A3A),
                   ),
                 ),
                 Text("99,1234 USD",
                   style: TextStyle(
                     fontSize: 18,
                       color: Color(0xff3A3A3A),
                   ),
                 ),
               ],
             ),
             SizedBox(height: width2*0.024,),
             Align(
               alignment: Alignment.topCenter,
               child: GestureDetector(
                 onTap: (){
                   setState(() {
                     got_it=!false;
                     Get.back();

                   });
                 },
                 child: FadeAnimation(1.2,Container(
                   height: 50,
                   width:MediaQuery.of(context).size.width*0.84,
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
                       colors: <Color>[
                         kdark_purple,
                         kpurple
                       ],
                     ),
                     borderRadius: BorderRadius.circular(3),
                     boxShadow: [
                       BoxShadow(
                         color: kgrey.withOpacity(0.4),
                         blurRadius: 6,
                         spreadRadius: 2,
                         offset: Offset(0,4),
                       ),
                     ],
                   ),
                   child: Center(
                     child: FadeAnimation(1.3,Text("Okay,got it!",
                       style: TextStyle(
                         color: kwhite,
                         letterSpacing: 1,
                         fontSize: 21,
                         fontWeight: FontWeight.w500,
                       ),
                     ),),
                   ),
                 ),),
               ),
             ),
           ],
         ),
       ),
     );
   }
   );
  }
}





class YouSendWidget extends StatelessWidget {
   YouSendWidget({Key key, @required this.width1,@required this.amount,@required this.country_name,@required this.image}) : super(key: key);

  final double width1;
  String amount;
  String country_name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:width1*0.03),
      child: Container(
        height: 92,
        width: width1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
         // color: Colors.yellow,
            color: kwhite,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 6,
              offset:Offset(0,0),
            ),
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal : width1*0.03),
          child: FadeAnimation(1.7,Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(

              height: 86,
             // width: width1*0.4,
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("You Send",
                style: TextStyle(
                  color: klight_black,
                  fontSize: 16,
                ),
                  ),
                  SizedBox(height: 5,),
                  Text(amount,
                    style: TextStyle(
                      color: Color(0xff939393),
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ),
              Container(
                height: 80,
                width: width1*0.27,
                //color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(country_name,
                      style: TextStyle(
                        color: Color(0xff939393),
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      height: width1*0.12,
                      width: width1*0.12,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(image,
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),),
        ),
      ),
    );
  }
}

class stepper extends StatelessWidget {
  final double width1;
  String title;
  String step;
   stepper({Key key, @required this.width1,@required this.title,@required this.step }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            step == null ?

                Container(
                  height: 14,
                  width: 14,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kwhite,
              ),
            ): Container(
             height: 23,
             width: 23,
             decoration: BoxDecoration(
             color: Colors.purple.shade700,
             shape: BoxShape.circle,
             border: Border.all(
              width: 1,
              color: kwhite
            )
             ),
      child: Center(
        child: Text(step,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    ),
            title== "Payment"? Container()
            :Container(
              width: width1*0.20,
              height: 2,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(height: 5,),
        Text(title,
          style: TextStyle(
            color: kwhite,
          ),
        ),
      ],
    );
  }
}









class DeliveryDetail extends StatelessWidget {
  DeliveryDetail({Key key, @required this.radioValue, @required this.title,@required this.detail, @required this.check_circl}) : super(key: key);

  final int radioValue;
  final String title;
  final String detail;
  bool   check_circl;

  @override
  Widget build(BuildContext context) {
    var height2=MediaQuery.of(context).size.height;
    var width2=MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:width2*0.023),
      child:    FadeAnimation(1.8,Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //width: width2*0.6,
             //color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                check_circl==true ? Text(title,
                style: TextStyle(
                  color:kdark_purple,
                  fontSize: 18,
                ),
                ):Container(),
                Text( detail,
                  style: TextStyle(fontSize: 20, color: Color(0xff707070),
                ),
                ),
              ],
            ),
          ),
           check_circl ? Container(
            height: 27,
            width: 27,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kgrey.withOpacity(0.3),
            ),
            child:Center(
              child: Icon(Icons.check,
              color: Colors.green,
              ),
            ),
          ):Container(
           height: 23,
           width: 23,
           decoration: BoxDecoration(
             shape: BoxShape.circle,
           color: kwhite,
             border: Border.all(
               width: 1,
               color: kgrey,
             ),
           ),

         ),
        ],
      ),),
    );
  }
}








