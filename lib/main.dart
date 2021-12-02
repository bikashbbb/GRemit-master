import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/utils.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/theme/colors.dart';
import 'dart:async';
import 'Screens/otp_for_rest.dart';
import 'Screens/HomeSideBar/request_fund.dart';
import 'base-template/background.dart';
import 'base-template/samal_oval_background.dart';
import 'Home/home.dart';
import 'pageview/pageview.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "G-remit",
      color: kpurple,
      theme: ThemeData(
        primaryColor: Color(0xff6910A0),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => MyPage(),

        //   '/login':(context)=> LoginPage(),

        //  '/country_picker':(context)=> country_picker(),

        //'/forgot':(conext)=>OTPForReset(),

        '/request_fund': (context) => RequestFund(),
        // '/home_page': (context) => MyHome(),

        //'/testing':(context)=>Testing(),
        // '/testing2':(context)=>Testing2(),

        //  '/dropdown':(context)=>  MyHomePage (),

       
        '/small_oval': (context) => BackgroundSmallOval(
              topContainer: true,
              topLogo: false,
              topNavigation: null,
              contentScreen: null,
            ),

        '/background': (context) => BackgroundWidget(
              topContainer: true,
              topLogo: false,
              topNavigation: null,
              contentScreen: null,
            ),
      },
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), finished);
  }

  void finished() {
    //Navigator.pushNamed(context,'/home_page');

    //Navigator.pushNamed(context,'/dumy_home');

    //Navigator.pushNamed(context,'/dumyhome3');

    //Navigator.pushNamed(context,'/small_oval');

    // Navigator.pushNamed(context,'/request_fund');

    //Navigator.pushNamed(context,'/login');

    Navigator.pushNamed(context, '/splash'); // for move on

    //Navigator.pushNamed(context,'/dropdown');

    //Navigator.pushNamed(context,'/testing');

    //Navigator.pushNamed(context,'/testing2');
    //Navigator.pushNamed(context,'/forgot');
    //Navigator.pushNamed(context,'/country_picker');

    //Navigator.pushNamed(context,'/background');
  }

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: kpurple,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xffAD4BD2),
              Color(0xff6910A0)
            ], // red to yellow
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeAnimation(
                1,
                Image.asset(
                  "assets/splash.png",
                  scale: 2.1,
                ),
              ),
              SizedBox(
                height: height1 * 0.05,
              ),
              FadeAnimation(
                2,
                Text(
                  "G-remit",
                  style: TextStyle(
                    fontFamily: "Rene Bieder",
                    //fontSize: 57,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: kwhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
