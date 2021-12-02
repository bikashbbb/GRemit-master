import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/activity.dart';
import 'package:gremit/Screens/HomeSideBar/campaign_cause.dart';
import 'package:gremit/Screens/HomeSideBar/chat.dart';
import 'package:gremit/Screens/HomeSideBar/navigation_drawer_widget.dart';
import 'package:gremit/Screens/HomeSideBar/notification.dart';
import 'package:gremit/Screens/HomeSideBar/request_fund.dart';
import 'package:gremit/Screens/HomeSideBar/select_country.dart';
import 'package:gremit/Screens/HomeSideBar/top_menu_button.dart';
import 'package:gremit/base-template/background.dart';
import 'package:gremit/theme/colors.dart';
import 'condtion.dart';
import 'package:get/get.dart';
import 'package:gremit/Screens/HomeSideBar/member.dart';

class Home extends StatefulWidget {
  String name;
  String gremitId;
  String email;
  Home(this.name, this.gremitId, this.email);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  List title = ['Refer a friend', 'Trace a order'];
  List image = [
    "assets/home/refer_friend.png",
    "assets/home/tracking_order.png"
  ];

  int currentTab = 0; // to keep track of active tab index

  final List<Widget> screens = [
    MyConditions(),
    Chat(),
    Member(),
  ];

  // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  //Widget currentScreen = DashBoard ();

  Widget currentScreen = MyConditions();

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[kdark_purple, kpurple],
          ),
          boxShadow: [
            BoxShadow(
              color: kpurple.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: kdark_purple.withOpacity(0.7),
          child: FadeAnimation(
            2.1,
            Icon(
              Icons.home,
              size: currentTab == 0 ? 45 : 40,
            ),
          ),
          onPressed: () {
            setState(() {
              //currentScreen = DashBoard (); // if user taps on this dashboard tab will be active
              currentTab = 0;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 57,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width1 * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Chat(); // if user taps on this dashboard tab will be active
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FadeAnimation(
                            2.2,
                            Icon(
                              Icons.chat,
                              size: 25,
                              color: currentTab == 1
                                  ? kwhite
                                  : kwhite.withOpacity(0.7),
                            ),
                          ),
                          FadeAnimation(
                            2.3,
                            Text(
                              'Chat',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: currentTab == 1
                                      ? kwhite
                                      : kwhite.withOpacity(0.7)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              // Member();
                              Member(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FadeAnimation(
                            2.2,
                            Icon(Icons.person,
                                size: 27,
                                color: currentTab == 2
                                    ? kwhite
                                    : kwhite.withOpacity(0.7)),
                          ),
                          FadeAnimation(
                            2.3,
                            Text(
                              'Member',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: currentTab == 2
                                      ? kwhite
                                      : kwhite.withOpacity(0.7)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        notchMargin: 12,
        //color: kpurple,
        color: kdark_purple.withOpacity(0.9),
      ),
      drawer: Drawer(
          child: NavigationDrawerWidget(
        name: widget.name,
        email: widget.email,
      )),
      body: currentTab == 0
          ? BackgroundWidget(
              topContainer: true,
              topLogo: false,
              contentScreen: Container(
                height: height1,
                width: width1,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: width1 * 0.18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width1 * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //SizedBox(height: height1 * 0.007,),
                              FadeAnimation(
                                1.1,
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    widget.name +
                                        ' Gremit ID ' +
                                        "GRUS " +
                                        widget.gremitId,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kwhite,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height1 * 0.012,
                              ),
                              FadeAnimation(
                                1.2,
                                Text(
                                  "We shall have the number generated based area of the country code, US,UK,UG,KE, etc and cumullative…1000,1,2,3,3,4, etc",
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height1 * 0.012,
                        ),

                        //////////////////////////////  Top Container     /////////////////////////////////

                        Container(
                          padding: EdgeInsets.fromLTRB(
                              1, width1 * 0.055, 1, width1 * 0.055),
                          width: width1 - 30,
                          height: height1 * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: kwhite,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 15,
                                  spreadRadius: 2),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FadeAnimation(
                                1.4,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/send_fund.png',
                                        "Send Fund",
                                        1),
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/request_fund.png',
                                        "Request Fund",
                                        2),
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/activity.png',
                                        "Activity",
                                        3),
                                  ],
                                ),
                              ),

                              /////////////////////////////////////////////////////////////////////////////
                              FadeAnimation(
                                1.5,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/notification.png',
                                        "Notification",
                                        4),
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/withdraw.png',
                                        "My Withdraw",
                                        5),
                                    MenuItem(
                                        context,
                                        width1,
                                        'assets/home/bil_payment.png',
                                        "Bill Payment",
                                        6),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        ////////////////////////////// End ,Top Container ///////////////////////////////
                        SizedBox(
                          height: width1 * 0.015,
                        ),
                        /////////////////////////////////// ListView    //////////////////////////////////
                        FadeAnimation(
                          1.6,
                          Container(
                            height: width1 * 0.41,
                            width: width1,
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.only(left: width1 * 0.03),
                                scrollDirection: Axis.horizontal,
                                itemCount: title.length,
                                itemBuilder: (conext, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 20, 20, 20),
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(8.0, 20, 0, 20),
                                      width: width1 * 0.8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kwhite,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              blurRadius: 15,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(12, 5, 10, 5),
                                        child: FadeAnimation(
                                          1.7,
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                image[index],
                                              ),
                                              SizedBox(
                                                width: width1 * 0.04,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    title[index],
                                                    style: TextStyle(
                                                      color: Color(0xff1A1A1A),
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: width1 * 0.017,
                                                  ),
                                                  Text(
                                                    "You'll both get \$10 ",
                                                    style: TextStyle(
                                                      color: Color(0xff1A1A1A),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          height: width1 * 0.02,
                        ),
                        /////////////////////////////// Campaign  Container  /////////////////////////
                        FadeAnimation(
                          1.8,
                          GestureDetector(
                            onTap: () {
                              Get.to(CampaignCause());
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  width1 * 0.06, width1 * 0.00, 5, 5),
                              width: width1 - 40,
                              height: height1 * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: kwhite,
                                //color: Colors.yellow,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FadeAnimation(
                                    1.9,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/home/campaign.png'),
                                        SizedBox(
                                          width: width1 * 0.04,
                                        ),
                                        Text(
                                          "Campaign/Causes",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            // color: kpurple,
                                            color: Color(0xff791AAA),
                                            fontSize: 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: width1 * 0.03,
                                  ),
                                  FadeAnimation(
                                    2,
                                    Container(
                                      width: width1,
                                      child: Text(
                                        "Hi James How can we help you? \n Still need help?",
                                        style: TextStyle(
                                          color: kpurple,
                                          // color: Color(0xffAD4BD2),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              topNavigation: TopMenuButton(openDrawer: () {
                scaffoldKey.currentState.openDrawer();
              }),
            )
          : PageStorage(
              child: currentScreen,
              bucket: bucket,
            ),
    );
  }

  GestureDetector MenuItem(BuildContext context, double width1, String image,
      String title, int rout) {
    return GestureDetector(
      onTap: () => selectoption3(context, rout),
      child: Container(
        //color: Colors.yellow,
        width: width1 * 0.3,
        height: width1 * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                image,
                scale: 1.1,
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                //color: kpurple,
                color: Color(0xff791AAA),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectoption3(BuildContext context, int index) {
    switch (index) {
      case 0:
        //Get.to(Home());
        break;
      case 1:
        Get.to(SelectCountry());
        break;
      case 2:
        Get.to(RequestFund());
        break;
      case 3:
        Get.to(Activity());
        break;
      case 4:
        Get.to(MyNotification());
        break;
      case 5:

        //Get.to(Withdraw());
        break;
      case 6:
        // Get.to(BillPayment());
        break;
    }
  }
}
