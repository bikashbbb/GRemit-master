import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/transfer_status.dart';
import 'package:gremit/theme/colors.dart';
import 'complete_your_registration.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
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
                "Profile",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            backgroundColor: kpurple,
            //centerTitle: true,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: width1 * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //SizedBox(height: height1 * 0.07,),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1.1,
                    Text(
                      "James Pill",
                      style: TextStyle(
                        color: kheading,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  FadeAnimation(
                    1.2,
                    Row(
                      children: [
                        Text(
                          "Transaction App ID:",
                          style: TextStyle(
                            color: kheading,
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1234567890",
                          style: TextStyle(
                            color: kheading,
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: height1*0.01,),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                height: 105,
                width: width1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 15,
                        spreadRadius: 1),
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsets.fromLTRB(width1 * 0.02, 5, width1 * 0.02, 5),
                  child: GestureDetector(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder:(context) => CompleteYourRegistration()));
                      Get.to(CompleteYourRegistration());
                    },
                    child: FadeAnimation(
                      1.3,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/home/profile_doc.png'),
                          Text(
                            "Complete your registration",
                            style: TextStyle(
                              color: Color(0xff616161),
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: kdark_purple,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Divider(
                    color: kgrey,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: FadeAnimation(
                      1.4,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.red,
                            width: 160,
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/home/profile_setting.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Setting",
                                  style: TextStyle(
                                    color: Color(0xff616161),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: kdark_purple,
                            size: 23,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: kgrey,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //color: Colors.red,
                          width: 160,
                          child: FadeAnimation(
                            1.5,
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage("assets/home/profile_man.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Recipient",
                                  style: TextStyle(
                                    color: Color(0xff616161),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kdark_purple,
                          size: 23,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: kgrey,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: FadeAnimation(
                      1.6,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.red,
                            width: 160,
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.,
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/home/profile_text.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "About",
                                  style: TextStyle(
                                    color: Color(0xff616161),
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: kdark_purple,
                            size: 23,
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: kgrey,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
