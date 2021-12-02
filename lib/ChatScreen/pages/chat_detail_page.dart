import 'package:gremit/ChatScreen/constant/data.dart';
import 'package:gremit/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:gremit/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:gremit/base-template/samal_oval_background.dart';
import 'package:get/get.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  TextEditingController _sendMessageController = new TextEditingController();

  List amount = ['100', '200', '500', '1000', '1500', '2000'];

  List profile_pic = [
    'assets/member_1.jpg',
    'assets/member_9.jpg',
    'assets/member_2.jpg',
    'assets/member_8.jpg',
    'assets/member_3.jpg',
    'assets/member_7.jpg',
    'assets/member_4.jpg',
    'assets/member_6.jpg',
    'assets/member_5.jpg',
  ];

  List activity = [
    "Paid ",
    "Receive from ",
    "Paid ",
    "Paid ",
    "Receive from ",
    "Paid ",
    "Receive from ",
    "Paid ",
    "Receive from ",
  ];

  List purpose = [
    'for a medical campaign',
    'Philips Ben',
    'for educational campaign',
    'for educational campaign',
    'Robert',
    'for a medical campaign',
    'Philips Ben',
    'for educational campaign',
    'Philips Ben',
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
          /*child:getBody(),*/

          ///////////////////////////////////////////////// Chat Body/////////////////////////
          child: Padding(
            padding: EdgeInsets.only(top: width1 * 0.352),
            child: getBody(height1, width1),
          ),

          /////////////////////////////////////////////////////////////////////////////////////
        ),

        ///////////////////////////////////////////////////// Ton name/back arrow /////////////////////
        topNavigation: Padding(
          padding: EdgeInsets.only(
              top: height1 * 0.063, left: width1 * 0.04, right: width1 * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    "Alexander Philips",
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: width1 * 0.17,
                //color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.call,
                      size: 25,
                      color: kwhite,
                    ),
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 25,
                      color: kwhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ///////////////////////////////////////////////////////////////////////////
      ),
      bottomSheet: getBottom(height1, width1),
    );
  }

  Widget getBottom(var height2, var width2) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kwhite,
        border: Border(
          top: BorderSide(
            //                    <--- top side
            color: kgrey.withOpacity(0.8),
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width2 * 0.18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.photo,
                  size: 35,
                  color: kgrey.withOpacity(
                    0.8,
                  ),
                ),
                Icon(
                  Icons.keyboard_voice,
                  size: 35,
                  color: kgrey.withOpacity(0.8),
                ),
                Image.asset(
                  "assets/icons/Gif.png",
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.camera_alt,
                size: 35,
                color: kgrey.withOpacity(0.8),
              ),
              Icon(
                Icons.add,
                size: 40,
                color: kpurple,
              ),
              Container(
                width: width2 * 0.65,
                height: 41,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    color: kwhite,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: TextField(
                    cursorColor: kpurple,
                    controller: _sendMessageController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type something",
                        suffixIcon: Icon(
                          Icons.send,
                          color: kgrey,
                          size: 20,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getBody(var height2, var width2) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding:
          EdgeInsets.only(right: 20, left: 20, top: 36, bottom: width2 * 0.25),
      children: List.generate(messages.length, (index) {
        return ChatBubble(
            isMe: messages[index]['isMe'],
            messageType: messages[index]['messageType'],
            message: messages[index]['message'],
            profileImg: messages[index]['profileImg']);
      }),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String profileImg;
  final String message;
  final int messageType;
  const ChatBubble({
    Key key,
    this.isMe,
    this.profileImg,
    this.message,
    this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    //color: kpurple,
                    color: kdark_purple,
                    borderRadius: getMessageType(messageType)),
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(color: white, fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(profileImg), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    // color: grey.withOpacity(0.7),
                    color: Color(0xffF5F5F5),
                    borderRadius: getMessageType(messageType)),
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(
                        color: kgrey,
                        //color:Color(0xff8F8F8F),
                        fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  getMessageType(messageType) {
    if (isMe) {
      // start message
      if (messageType == 1) {
        return BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      }
      // middle message
      else if (messageType == 2) {
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      }
      // end message
      else if (messageType == 3) {
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      }
      // standalone message
      else {
        return BorderRadius.all(Radius.circular(30));
      }
    }
    // for sender bubble
    else {
      // start message
      if (messageType == 1) {
        return BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      }
      // middle message
      else if (messageType == 2) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      }
      // end message
      else if (messageType == 3) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      }
      // standalone message
      else {
        return BorderRadius.all(Radius.circular(30));
      }
    }
  }
}
