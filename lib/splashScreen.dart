import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

Future initPref() async {
  return await SharedPreferences.getInstance();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    var email;
    initPref().then((val) {
      setState(() {
        prefs = val;
        email = prefs!.getString('email');
      });
    });

    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => email == null ? Login() : Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 14, 124, 0),
        child: Center(
          child: Image(image: AssetImage('assets/logo2.png')),
        ));
  }
}
