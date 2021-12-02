import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gremit/theme/colors.dart';

import 'dart:ui' as ui;

class BackgroundWidget extends StatefulWidget {
  bool topContainer = true;
  bool topLogo = true;

  //bool OuterClipped=true;

  Container contentScreen = null;
  var topNavigation = null;

  BackgroundWidget(
      {Key key,
      @required this.topContainer,
      @required this.topLogo,
      @required this.contentScreen,
      @required this.topNavigation})
      : super(key: key);

  _BackgroundScafoldState createState() => _BackgroundScafoldState();
}

class _BackgroundScafoldState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    var width1 = MediaQuery.of(context).size.width;
    var WIDTH = MediaQuery.of(context).size.width;
    var height1 = MediaQuery.of(context).size.height;

    Orientation orientation = MediaQuery.of(context).orientation;
    List<Widget> stack_childerns = [];

    if (widget.topContainer) {
      stack_childerns.add(
        Positioned(
          child: Transform.translate(
            offset: Offset(0.0, -MediaQuery.of(context).size.width / 2.1),
            child: Transform.scale(
              scale: 1.4,
              child: Container(
                height: width1,
                width: width1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      kpurple,
                      kdark_purple,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    /////////////////////////////////////// Content VIEW End ////////////////////////////////////////////
    if (widget.contentScreen != null) {
      stack_childerns.add(widget.contentScreen);
    }

    /////////////////////////////////////// Top Navigation  /////////////////////////////////////////////
    if (widget.topNavigation != null) {
      stack_childerns.add(widget.topNavigation);
    }
    /////////////////////////////////////// Top Navigation  //////////////////////////////////////////

    if (widget.topLogo) {
      stack_childerns.add(
        Positioned(
          top: 30,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Row(
            children: [
              Center(
                child: Image.asset(
                  "assets/logo.png",
                  scale: 1.4,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: kwhite,
      body: Stack(
        children: stack_childerns,
      ),
    );
  }
}
