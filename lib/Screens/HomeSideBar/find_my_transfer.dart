import 'package:flutter/material.dart';
import 'package:gremit/Animation/FadeAnimation.dart';
import 'package:gremit/Screens/HomeSideBar/transfer_status.dart';
import 'package:gremit/theme/colors.dart';
import 'package:get/get.dart';

class FindMyTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    var width1 = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65.0), // here the desired height
            child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[kdark_purple, kpurple],
                  ),
                ),
              ),
              title: FadeAnimation(
                1.2,
                Text(
                  "Find a new transfer",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ),
              backgroundColor: kpurple,
              //centerTitle: true,
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width1 * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: width1 * 0.05),
                        child: FadeAnimation(
                          1.3,
                          NewTransferField(
                              input_type: TextInputType.number,
                              label: "Transfer ID"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: FadeAnimation(
                          1.4,
                          NewTransferField(
                              input_type: TextInputType.visiblePassword,
                              label: " Email or Phone number"),
                        ),
                      ),
                      SizedBox(
                        height: height1 * 0.03,
                      ),
                      Container(
                        width: width1 - 40,
                        child: FadeAnimation(
                          1.5,
                          Text(
                            "As its shows on the transfer details. For Phone number please enter the digits following the country code.For instance ,if your number is +234-123456789 then enter 123456789",
                            style: TextStyle(
                              fontSize: 16,
                              color: krest_passwrod.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height1 * 0.1,
                ),
                FadeAnimation(
                  1.6,
                  GestureDetector(
                    onTap: () {
                      Get.to(TransferStatus());
                    },
                    child: Container(
                      height: 60,
                      width: width1 * 0.84,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[kdark_purple, kpurple],
                        ),
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: kgrey.withOpacity(0.4),
                            blurRadius: 6,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: FadeAnimation(
                          1.7,
                          Text(
                            "Find my transfer",
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              //fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewTransferField extends StatelessWidget {
  NewTransferField({Key key, @required this.input_type, @required this.label})
      : super(key: key);

  TextInputType input_type;
  String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kdark_purple,
      keyboardType: input_type,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kdark_purple),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.7, color: kdark_purple),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        contentPadding: EdgeInsets.all(20),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 16,
          color: kdark_purple,
        ),
      ),
    );
  }
}
