import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/theme/colors.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final double scale;

  SliderPage({this.title, this.image, this.description, this.scale});

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    var height1 = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height1 * 0.07),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeAnimation(
                  1.1,
                  Image.asset(
                    "assets/new_logo.png",
                    scale: 4.5,
                  ),
                ),
                SizedBox(
                  width: height1 * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Global",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff644e7e),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Remit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff9bbb59),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Xe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xffffc000),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xff943634),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: height1 * 0.02,
                ),
                FadeAnimation(
                  1.2,
                  Image.asset(
                    image,
                    scale: scale,
                  ),
                ),
                SizedBox(
                  width: height1 * 0.05,
                ),
                Container(
                  width: width1 * 0.95,
                  child: FadeAnimation(
                    1.4,
                    Text(
                      description,
                      style: TextStyle(
                        color: kdark_purple,
                        fontSize: 14,
                        letterSpacing: 0.7,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
