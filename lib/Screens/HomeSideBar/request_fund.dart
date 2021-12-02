import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class RequestFund extends StatefulWidget {
  @override
  _RequestFundState createState() => _RequestFundState();
}

class _RequestFundState extends State<RequestFund> {




  List amount = ['100','200','500','1000','1500','2000'];
  List purpose=['Family','Friend','Donation','other',];


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

      body: BackgroundSmallOval(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding:  EdgeInsets.only(bottom:30),
              child: Column(
                children: [
                  SizedBox(height: height1 * 0.25),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:width1*0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment:Alignment.topLeft,
                          child: FadeAnimation(1.3,Text("Search by",
                            style: TextStyle(
                              color: kblack,
                              fontSize: 20,
                            ),
                          ),),
                        ),
                        SizedBox(height: width1*0.01,),
                        FadeAnimation(1.4,TextFormField(
                          cursorColor: kpurple,
                          cursorHeight: 25,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "name, @username , email",
                            hintStyle: TextStyle(
                              color: krest_passwrod.withOpacity(0.9),
                              fontSize: 17,
                            ),
                          ),
                        ),),
                        SizedBox(height: width1*0.12,),
                        Align(
                          alignment:Alignment.topLeft,
                          child: FadeAnimation(1.5,Text("Amount  (\$)",
                            style: TextStyle(
                              color: kblack,
                              fontSize: 20,
                            ),
                          ),),
                        ),
                        SizedBox(height: width1*0.01,),
                        FadeAnimation(1.6,TextFormField(
                          cursorColor: kpurple,
                          cursorHeight: 25,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Enter Amount",
                            hintStyle: TextStyle(
                              color: krest_passwrod.withOpacity(0.9),
                              fontSize: 17,
                            ),
                          ),
                        ),),
                        SizedBox(height: width1*0.05,),
                        ////////////////////////////// Amount List Container  ///////////////////////////////
                        Container(
                          height:65,
                          width: width1,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: amount.length,
                              itemBuilder: (conext,index){
                                return Padding(
                                  padding:  EdgeInsets.fromLTRB(7,15,15,15),
                                  child:FadeAnimation(1.6, Container(
                                    width: width1*0.28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(
                                        color: krest_passwrod
                                      ),
                                    ),
                                    child:Center(
                                      child: FadeAnimation(1.7,Text(amount[index],
                                        style: TextStyle(
                                          color: krest_passwrod.withOpacity(0.9),
                                          fontSize: 22,
                                        ),
                                      ),),
                                    )
                                  ),),
                                );
                              }
                          ),
                        ),
                        ///////////////////////////////        END           ////////////////////////////////
                        SizedBox(height: width1*0.05,),
                        FadeAnimation(1.7,TextFormField(
                          cursorColor: kpurple,
                          cursorHeight: 25,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: "What's is for?",
                            hintStyle: TextStyle(
                              color: krest_passwrod.withOpacity(0.9),
                              fontSize: 17,
                            ),
                          ),
                        ),),
                        SizedBox(height: width1*0.05,),


                        ////////////////////////////////////////   Purpose List ////////////////////////////////
                        Container(
                          height: width1*0.17,
                          width: width1,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: purpose.length,
                              itemBuilder: (conext,index){
                                return Padding(
                                  padding:  EdgeInsets.fromLTRB(7,15,15,15),
                                  child: FadeAnimation(1.8,Container(
                                      width: width1*0.28,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        //color: Colors.green,
                                        border: Border.all(
                                            color: krest_passwrod
                                        ),
                                      ),
                                      child:Center(
                                        child: FadeAnimation(1.9,Text(purpose[index],
                                          style: TextStyle(
                                            color: krest_passwrod.withOpacity(0.9),
                                            fontSize: 14,
                                          ),
                                        ),),
                                      )
                                  ),),
                                );
                              }
                          ),
                        ),
                        ///////////////////////////////////////////////////////////////////////////////////////
                        SizedBox(height: height1 * 0.08,),
                        FadeAnimation(2,Container(
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
                            child: FadeAnimation(2.2,Text("Request",
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),),
                          ),
                        ),)

                      ],
                    ),
                  ),
                  //SizedBox(height: width1*0.18,),

                ],
              ),
            ),
          ),
        ),
        topNavigation: Padding(
          padding:  EdgeInsets.only(top:height1*0.06,left:width1*0.04 ),
          child: FadeAnimation(1.1,Row(
            children: [
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  size:30,
                  color: kwhite,
                ),
              ),
              SizedBox(width: width1*0.03,),
              Text("Request Fund",
              style:TextStyle(
                color: kwhite,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),),
        ),
      ),
    );
  }

}


