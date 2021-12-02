import 'package:flutter/material.dart';
import 'package:gremit/theme/colors.dart';

class TopMenuButton extends StatelessWidget {
  final Function openDrawer;
  TopMenuButton({Key key, this.openDrawer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: width1 * 0.08, left: width1 * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Builder(
            builder: (context) => GestureDetector(
              onTap: openDrawer,
              child: Icon(
                Icons.menu,
                color: Colors.white,
                //color: kpurple,
                size: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
