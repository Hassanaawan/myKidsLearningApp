import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids/responcive.dart';
import 'package:lottie/lottie.dart';

import 'bottomnavigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(milliseconds: 500),
        (() => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNav()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 220,
          ),
          Center(
            child: Image.asset(
              'assets/images/splash.png',
              height: 259,
              width: 259,
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Text('Designed and Developed by',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              'assets/images/codecuee.png',
              height: 36,
              width: 128,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text('v 1.0',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
