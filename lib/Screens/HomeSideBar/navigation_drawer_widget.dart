import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/profile.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import '../../login.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  var name;
  var email;

  NavigationDrawerWidget({this.name, this.email});

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;

    final name = 'James Pill';
    final email = 'jamespill@gmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: kwhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                buildHeader(
                    widht2: width1,
                    urlImage: urlImage,
                    name: this.name,
                    email: this.email,
                    onClicked:
                        () //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),
                        {
                      Get.to(Profile());
                    }),
                SizedBox(
                  height: width1 * 0.05,
                ),
                /////////////////////////////////////  List    ////////////////////////////////
                Container(
                  //color: Colors.green,
                  height: height1 * 0.56,
                  width: width1,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        padding: padding,
                        child: Column(
                          children: [
                            FadeAnimation(
                              1.5,
                              buildMenuItem(
                                text: 'Payment Method',
                                icon: "assets/home/payment_method.png",
                                onClicked: () => selectedItem(context, 1),
                              ),
                            ),
                            FadeAnimation(
                              1.5,
                              buildMenuItem(
                                text: 'Get Help',
                                icon: "assets/home/get_help.png",
                                onClicked: () => selectedItem(context, 2),
                              ),
                            ),
                            FadeAnimation(
                              1.7,
                              buildMenuItem(
                                text: 'Change Password',
                                icon: "assets/home/change_pass.png",
                                onClicked: () => selectedItem(context, 3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /////////////////////////////////////      Log Out       ////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Login2());
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[kdark_purple, kpurple],
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: kwhite.withOpacity(0.1),
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: Offset(
                                0,
                                0,
                              )),
                        ],
                      ),
                      child: Center(
                        child: FadeAnimation(
                          1.8,
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    var widht2,
    String urlImage,
    String name,
    String email,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: kwhite,
              border: Border(
                bottom: BorderSide(width: 1.0, color: kgrey.withOpacity(0.8)),
              ),
              boxShadow: [
                BoxShadow(
                  color: kwhite.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(
                    -4,
                    1,
                  ),
                ),
              ]),
          padding: padding.add(EdgeInsets.symmetric(vertical: 55)),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage("assets/home/james.jpg"),
                  ),
                  SizedBox(width: widht2 * 0.023),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        1.2,
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                            color: kblack,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      FadeAnimation(
                        1.3,
                        Text(
                          email,
                          style: TextStyle(
                            fontSize: 16,
                            color: krest_passwrod,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    String icon,
    VoidCallback onClicked,
  }) {
    final color = krest_passwrod;
    final hoverColor = kred;
    return ListTile(
      leading: Image.asset(
        icon,
        //color: kpurple,
      ),
      title: Text(text,
          style: TextStyle(
            //color: kgrey,
            color: krest_passwrod,
            fontSize: 18,
          )),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            // builder: (context) => PeoplePage(),
            ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            // builder: (context) => TabBarPage(),
            ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
            // builder: (context) => Event(),
            ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) => GetAccess(),
            ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) => MusicNight(),
            ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) =>  GoogleMap(),
            ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) => MemberShip(),
            ));
        break;
    }
  }
}
