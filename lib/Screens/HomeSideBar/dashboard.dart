import 'package:flutter/material.dart';
import 'package:gremit/Screens/HomeSideBar/select_country.dart';
import 'package:gremit/Screens/HomeSideBar/top_menu_button.dart';
import 'package:gremit/Screens/HomeSideBar/request_fund.dart';
import 'package:gremit/Screens/HomeSideBar/withdraw.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'activity.dart';
import 'bil_payment.dart';
import 'navigation_drawer_widget.dart';
import 'package:gremit/Screens/HomeSideBar/notification.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  List title = ['Refer a friend', 'Trace a order'];
  List image = [
    "assets/home/refer_friend.png",
    "assets/home/tracking_order.png"
  ];

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      body: BackgroundWidget(
        topContainer: true,
        topLogo: false,
        contentScreen: Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: width1 * 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width1 * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "James Pill Dumy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kwhite,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.012,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(
                          //fontWeight: FontWeight.w300,
                          color: kwhite,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height1 * 0.02,
                ),

                ////////////////////////////// Top Container     /////////////////////////////////
                Container(
                  padding:
                      EdgeInsets.fromLTRB(8, width1 * 0.05, 10, width1 * 0.05),
                  width: width1 - 40,
                  height: height1 * 0.32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: kwhite,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => selectoption(context, 1),
                            child: Container(
                              width: width1 * 0.26,
                              //color: Colors.yellow,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/home/send_fund.png'),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Send Fund",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => selectoption(context, 2),
                            child: Container(
                              width: width1 * 0.26,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/home/request_fund.png'),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Request ",
                                        style: TextStyle(
                                          color: kpurple,
                                          fontSize: 21,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Fund",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => selectoption(context, 3),
                            child: Container(
                              width: width1 * 0.26,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child:
                                        Image.asset('assets/home/activity.png'),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Activity",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      /////////////////////////////////////////////////////////////////////////////
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => selectoption(context, 4),
                            child: Container(
                              width: width1 * 0.26,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                        'assets/home/notification.png'),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Notification",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => selectoption(context, 5),
                            child: Container(
                              width: width1 * 0.26,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/home/withdraw.png'),
                                  SizedBox(height: 8),
                                  Text(
                                    "Withdraw",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => selectoption(context, 6),
                            child: Container(
                              width: width1 * 0.26,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                        'assets/home/bil_payment.png'),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Bill",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                  Text(
                                    "Payment",
                                    style: TextStyle(
                                      color: kpurple,
                                      fontSize: 21,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ////////////////////////////// End ,Top Container ///////////////////////////////
                SizedBox(
                  height: width1 * 0.015,
                ),
                /////////////////////////////////// ListView
                Container(
                  height: width1 * 0.41,
                  //width:width1,
                  width: width1,
                  //color: Colors.yellow,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: width1 * 0.03),
                      scrollDirection: Axis.horizontal,
                      itemCount: title.length,
                      itemBuilder: (conext, index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 20, 20, 20),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8.0, 20, 0, 20),
                            //height: width1*0.2,
                            width: width1 * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: Colors.green,
                              color: kwhite.withOpacity(0.9),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                  //offset: Offset(0,10),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    /*"assets/home/refer_friend.png"*/ image[
                                        index],
                                  ),
                                  SizedBox(
                                    width: width1 * 0.04,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        /*"Refer a friend"*/ title[index],
                                        style: TextStyle(
                                          color: kpurple,
                                          fontSize: 25,
                                        ),
                                      ),
                                      SizedBox(
                                        height: width1 * 0.017,
                                      ),
                                      Text(
                                        "You'll both get \$10 ",
                                        style: TextStyle(
                                          color: kgrey,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: width1 * 0.02,
                ),
                /////////////////////////////// Campaign  Container  /////////////////////////
                Container(
                  padding:
                      EdgeInsets.fromLTRB(width1 * 0.06, width1 * 0.06, 5, 5),
                  width: width1 - 40,
                  height: height1 * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: kwhite,
                    //color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/home/campaign.png'),
                          SizedBox(
                            width: width1 * 0.04,
                          ),
                          Text(
                            "Campaign/Causes",
                            style: TextStyle(
                              color: kpurple,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width1 * 0.04,
                      ),
                      Container(
                        width: width1 * 0.8,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            //fontWeight: FontWeight.w300,
                            color: kpurple,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        topNavigation: TopMenuButton(openDrawer: () {
          scaffoldKey.currentState.openDrawer();
        }),
      ),
      drawer: Drawer(child: NavigationDrawerWidget()),
    );
  }

  void selectoption(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DashBoard(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SelectCountry(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RequestFund(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Activity(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyNotification(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Withdraw(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BillPayment(),
        ));
        break;
    }
  }
}
