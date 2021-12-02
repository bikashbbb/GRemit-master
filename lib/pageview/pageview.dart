import 'package:flutter/material.dart';
import 'package:gremit/login.dart';
import 'package:gremit/pageview/slider.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';
import 'package:gremit/Animation/FadeAnimation.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landing(),
    );
  }
}

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
      title: "Heading 1",
      image: "assets/h_1.jpg",
      description:
          "Welcome to GRemit Exchange Centre, now you can G-send, G- receive, G-pay, G-give, G-Transfer to bank Money globally as many transactions as you can. Transact from one central point",
      scale: 3.2,
    ),
    SliderPage(
      title: "Heading 2",
      image: "assets/h_2_removebg.png",
      description:
          "Send money globally,have the ability get the best individual exchange rates. No hidden fees Chat direct with the other agree on the rate exchange.",
      scale: 3,
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    var height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ///////////////////////////////       Page View Dot    ///////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return FadeAnimation(
                    1.7,
                    AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 15,
                        width: (index == _currentPage) ? 35 : 15,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: (index == _currentPage)
                                ? kdark_purple
                                : kpurple.withOpacity(0.9))),
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 52,
                  width: (_currentPage == (_pages.length - 1))
                      ? width1 * 0.56
                      : width1 * 0.5,
                  decoration: BoxDecoration(
                    //color: kpurple,
                    borderRadius: BorderRadius.circular(10),

                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[kdark_purple, kpurple],
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: kpurple.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: (_currentPage == (_pages.length - 1))
                      ? GestureDetector(
                          onTap: () {
                            Get.to(Login2());
                          },
                          child: Center(
                            child: Text(
                              "Lets Start",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                              ),
                            ),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: height1 * 0.017,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
