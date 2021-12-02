import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/you_send_fund.dart';
import 'package:gremit/base-template/medium_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class SelectCountry extends StatefulWidget {
  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  List country_name = [
    'Pakistan',
    'United State',
    'Germany',
    'France',
    'Pakistan',
    'United State',
    'Germany',
    'France',
    'Pakistan',
    'United State',
    'Germany',
    'France',
  ];

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

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: MediumOval(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: width1 * 0.09),
              child: Column(
                children: [
                  ////////////////////////////////  where you would text ///////////////////////
                  Padding(
                    padding: EdgeInsets.only(
                      left: width1 * 0.06,
                    ),
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
                          FadeAnimation(
                            1.1,
                            Text(
                              "Where would you like",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: kwhite,
                                fontSize: 21,
                              ),
                            ),
                          ),
                          FadeAnimation(
                            1.2,
                            Text(
                              "to send money?",
                              style: TextStyle(
                                color: kwhite,
                                //fontWeight:FontWeight.bold ,
                                fontSize: 21,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: width1 * 0.012,
                  ),
                  //////////////////////////////  Top Search Container     /////////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: width1 * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: FadeAnimation(
                          1.3,
                          TextFormField(
                            cursorColor: kdark_purple,
                            style: TextStyle(color: kgrey),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              hintStyle: TextStyle(color: kgrey, fontSize: 18),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child:
                                    Icon(Icons.search, size: 32, color: kgrey),
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height1 * 0.036,
                  ),
                  ///////////////////////////////////////////////////////////// Select Country  ////////////////
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width1 * 0.032),
                    child: Container(
                      height: height1,
                      width: width1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          //color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 15,
                                spreadRadius: 2),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: width1 * 0.14,
                            width: width1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 14),
                                  child: FadeAnimation(
                                    1.4,
                                    Text(
                                      "Country",
                                      style: TextStyle(
                                        color: krest_passwrod,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width1 * 0.02),
                            child: Container(
                              height: 1,
                              width: width1,
                              color: krest_passwrod.withOpacity(0.7),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  padding: EdgeInsets.zero,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: profile_pic.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.fromLTRB(7, 0, 1, 2),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(YouSendFund(false, false));
                                            },
                                            child: Container(
                                                height: width1 * 0.14,
                                                decoration: BoxDecoration(
                                                  //color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 14),
                                                  child: FadeAnimation(
                                                    1.5,
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height: width1 * 0.12,
                                                          width: width1 * 0.12,
                                                          decoration:
                                                              BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  image:
                                                                      DecorationImage(
                                                                    image:
                                                                        AssetImage(
                                                                      profile_pic[
                                                                          index],
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  )),
                                                        ),
                                                        SizedBox(
                                                          width: width1 * 0.03,
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  country_name[
                                                                      index],
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        kgrey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        18,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: width1 * 0.02),
                                            child: Container(
                                              height: 1,
                                              width: width1,
                                              color: krest_passwrod
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ],
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
        ),
        topNavigation: null,
      ),
    );
  }
}
