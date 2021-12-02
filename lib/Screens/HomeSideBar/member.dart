import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';



class Member extends StatefulWidget {
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {





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

  List name=[
    'Robert Carl',
    'Hennry Lee',
    'Harry Harry',
    'Rasica Robert',
    'john Mick',
    'Dana',
    'Fernando Torres',
    'Marry',
    'Alexandra Philips',
  ];














  @override
  Widget build(BuildContext context) {
    bool shouldCheck = false;

    var height1 = MediaQuery
        .of(context)
        .size
        .height;
    var width1 = MediaQuery
        .of(context)
        .size
        .width;
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;

    return
      Scaffold(
        body: Container(
          height: height1,
          width: width1,
          child: Stack(
            children: [
              Positioned(
                child: Transform.translate(
                  //offset: Offset(0.0, -MediaQuery.of(context).size.width / 1.07),
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
                          MediaQuery
                              .of(context)
                              .size
                              .width,
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
                    SizedBox(height: height1*0.06,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:width1*0.07),
                      child: FadeAnimation(1.3,Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Members",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("143",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),),
                    ),
                    SizedBox(height: 2,),
                    Padding(
                      padding:  EdgeInsets.only(left:width1*0.07),
                      child: FadeAnimation(1.4,Text("These all friends are from your contact List",
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),),
                    ),

                    //////////////////////////////////////////////////// Search Bar /////////////////////////////
                    SizedBox(height: width1 * 0.09),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: width1*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0,0),
                          ),
                        ],
                      ),
                      child:     FadeAnimation(1.5,
                        TextFormField(
                          cursorColor: kdark_purple,

                        style: TextStyle(color: kgrey),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal:25,  vertical: 20),
                          hintStyle: TextStyle(color: kgrey,fontSize: 18),
                          prefixIcon: Padding(
                            padding:  EdgeInsets.only(left:18.0),
                            child: Icon(Icons.search,
                                size: 32,
                                color: kgrey
                            ),
                          ),
                          hintText: 'Search',

                        ),
                      ),),
                    ),
                  ],
                ),


                    SizedBox(height: height1 * 0.036),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:width1*0.032),
                      child: Container(
                        height: height1-260,
                        width: width1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 15,
                                  spreadRadius: 2
                              ),
                            ]
                        ),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            physics: BouncingScrollPhysics(),
                            itemCount: profile_pic.length,
                            itemBuilder: (context,index){
                              return Padding(
                                padding:  EdgeInsets.fromLTRB(7,0,1,2),
                                child: Column(
                                  children: [
                                    FadeAnimation(1.6,Container(
                                        height:width1*0.27 ,
                                        decoration: BoxDecoration(
                                          //color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child:Padding(
                                          padding:  EdgeInsets.only(left:14),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: width1*0.18,
                                                width: width1*0.18,
                                                decoration: BoxDecoration(
                                                    shape:BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(profile_pic[index],
                                                      ),
                                                      fit: BoxFit.cover,
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: width1*0.03,),
                                              Padding(
                                                padding: EdgeInsets.only(top:width1*0.04),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(name[index],
                                                          style: TextStyle(
                                                            color: Color(0xff791AAA),
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 18,
                                                          ),
                                                        ),

                                                      ],
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text("18 h",
                                                          style: TextStyle(
                                                            color: krest_passwrod.withOpacity(0.9),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        SizedBox(width: width1*0.01,),
                                                        Image.asset('assets/home/world.png',
                                                        ),
                                                      ],
                                                    ),
                                                    // SizedBox(width: width1*0.04,),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.favorite_border,
                                                          color: krest_passwrod.withOpacity(0.9),
                                                          size: 20,
                                                        ),
                                                        SizedBox(width: width1*0.04,),
                                                        Icon(Icons.messenger_outline,
                                                          color: krest_passwrod.withOpacity(0.9),
                                                          size: 18,

                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )

                                    ),),
                                    Padding(
                                      padding: EdgeInsets.only(left:width1*0.18),
                                      child: Container(
                                        height: 1,
                                        width: width1*0.65,
                                        color:krest_passwrod.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
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

}
