import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'otp_header.dart';
import 'otp_lower.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            // Header Image
         Header(),
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 45),
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    OtpLower(),

                  ],

                ),

              ),


            ),

            ),


          ],
        ),

      ),
    );
  }
}
