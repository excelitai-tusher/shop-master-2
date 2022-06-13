import 'dart:async';
import 'package:flutter/material.dart';

import '../Onbording1/Onboarding1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Onbording()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Splash.png'),
          fit: BoxFit.cover,
        ),
      ),
      // child: CircularProgressIndicator(
      //   strokeWidth: 0.2,
      //  // strokehe: 1.0,
      // valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      // ),
    );
  }
}
