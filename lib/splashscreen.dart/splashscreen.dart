import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uber_ui/decider_screen_firsttime_or_olduser.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => decider()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            "Uber 2.0",
            style: TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 226, 223, 223)),
          ),
        ),
      ),
    );
  }
}
