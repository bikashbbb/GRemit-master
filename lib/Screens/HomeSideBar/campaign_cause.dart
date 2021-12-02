import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class CampaignCause extends StatefulWidget {
  @override
  _CampaignCauseState createState() => _CampaignCauseState();
}

class _CampaignCauseState extends State<CampaignCause> {
  List title = [
    'Medical Campaign',
    'Educational Campaign',
    'Medical Campaign',
    'Educational Campaign'
  ];
  List image = [
    'assets/medical_1.jpg',
    'assets/education.jpg',
    'assets/medical_1.jpg',
    'assets/education.jpg'
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
          child: Column(
            children: [
              SizedBox(
                height: width1 * 0.34,
              ),
              ////////////////////////////// Amount List Container  ///////////////////////////////
              Container(
                height: height1 - width1 * 0.34,
                width: width1,
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    itemCount: image.length,
                    itemBuilder: (conext, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            width1 * 0.029, 12, width1 * 0.029, 2),
                        child: Container(
                            height: 136,
                            width: width1 * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  image[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(14.0, 30, 0, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeAnimation(
                                    1.2,
                                    Text(
                                      title[index],
                                      style: TextStyle(
                                        color: kwhite,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  FadeAnimation(
                                    1.4,
                                    Row(
                                      children: [
                                        Text(
                                          "Required Amount:",
                                          style: TextStyle(
                                            color: kwhite,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "\$300",
                                          style: TextStyle(
                                            color: kwhite,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  FadeAnimation(
                                    1.6,
                                    Row(
                                      children: [
                                        Text(
                                          "Due Date:",
                                          style: TextStyle(
                                            color: kwhite,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "24-April-2021",
                                          style: TextStyle(
                                            color: kwhite,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
              ),
            ],
          ),
        ),
        topNavigation: Padding(
          padding: EdgeInsets.only(top: height1 * 0.06, left: width1 * 0.04),
          child: FadeAnimation(
            1.1,
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: kwhite,
                  ),
                ),
                SizedBox(
                  width: width1 * 0.03,
                ),
                Text(
                  "Campaign And Cause",
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
