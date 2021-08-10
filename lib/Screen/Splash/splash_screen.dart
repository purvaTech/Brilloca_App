
import 'dart:async';

import 'package:brilloca_app/Screen/Home/home_screen.dart';
import 'package:brilloca_app/Screen/Sign%20In/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loggedIn = false;
  final splashDelay = 3;
  _checkLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var _isLoggedIn = prefs.getBool('logged_in');
    if (_isLoggedIn == true) {
      setState(() {
        _loggedIn = _isLoggedIn!;
      });
    } else {
      setState(() {
        _loggedIn = false;
      });
    }
  }
  @override
  void initState(){
    super.initState();
    _loadWidget();
    _checkLoggedIn();

    //  Future.delayed(const Duration(seconds: 3),()=>
    //     Navigator.pushReplacement(
    //         context,MaterialPageRoute(builder:(context)=>SignInScreen(),))
    // );
  }
  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => homeOrLog()));
  }
  Widget homeOrLog() {
    if(this._loggedIn){
      var obj = 0;
      return HomeScreen();
    }
    else{
      return SignInScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/GIF/Splash_vedio.gif",
         gaplessPlayback: true,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
