import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/ChatScreen/constant/data.dart';
import 'package:gremit/ChatScreen/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        height: height1,
        width: width1,
        child: Stack(
          children: [
            Positioned(
              child: Transform.translate(
                offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.029),
                child: Transform.scale(
                  scale: 1.8,
                  child: Container(
                    height: width1,
                    width: width1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
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
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height1 * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width1 * 0.07),
                    child: FadeAnimation(
                      1.1,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Message",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width1 * 0.07),
                    child: FadeAnimation(
                      1.2,
                      Text(
                        "Recent chats",
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: width1 * 0.05),
                  //////////////////////////////////////////////////////  Search    /////////////////////////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: width1 * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: FadeAnimation(
                          1.4,
                          TextFormField(
                            cursorColor: kdark_purple,
                            style: TextStyle(color: kgrey),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              hintStyle: TextStyle(color: kgrey, fontSize: 18),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child:
                                    Icon(Icons.search, size: 32, color: kgrey),
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height1 * 0.036),

                  /////////////////////////////////////////////////// Recent Chat Container  //////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width1 * 0.032),
                    child: Container(
                      height: height1 - 260,
                      width: width1,
                      decoration: BoxDecoration(
                          //color: Colors.yellow,

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 15,
                                spreadRadius: 2),
                          ]),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.only(
                          left: 2,
                          right: 2,
                        ),
                        children: <Widget>[
                          Column(
                            children:
                                List.generate(userMessages.length, (index) {
                              return Padding(
                                // padding:  EdgeInsets.fromLTRB(7,15,1,3 ),
                                padding: EdgeInsets.fromLTRB(7, 0, 1, 2),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(ChatDetailPage());
                                      },
                                      child: FadeAnimation(
                                        1.5,
                                        Container(
                                            height: width1 * 0.29,
                                            decoration: BoxDecoration(
                                              //color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 14),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: width1 * 0.2,
                                                    width: width1 * 0.2,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                            userMessages[index]
                                                                ['img'],
                                                          ),
                                                          fit: BoxFit.cover,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    width: width1 * 0.023,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(vertical: width1 * 0.02),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          userMessages[index]['name'],
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff791AAA),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                        SizedBox(height: width1*0.02,),
                                                        Container(
                                                          width: width1 * 0.61,
                                                           //color: Colors.yellow,
                                                          child: Text(//"alksdfkasfklasdfasdasdfhkasdfajksdfaskdfasdfakjsdfasdfjkasdfsdfjhasdfalsdjkf",
                                                            userMessages[index]['message'],
                                                            style: TextStyle(
                                                              color: krest_passwrod
                                                                  .withOpacity(
                                                                      0.9),
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width1 * 0.18),
                                      child: Container(
                                        height: 1,
                                        width: width1 * 0.65,
                                        color: krest_passwrod.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(userMessages.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ChatDetailPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 75,
                        height: 75,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(userMessages[index]['img']),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            userMessages[index]['name'],
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 135,
                            child: Text(
                              userMessages[index]['message'] +
                                  " - " +
                                  userMessages[index]['created_at'],
                              style: TextStyle(
                                  fontSize: 15, color: black.withOpacity(0.8)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
