import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uber_ui/authscreen/authenticationscreen.dart';
import 'package:uber_ui/firsttimeonlyscreen/firsttime_only.dart';
import 'package:uber_ui/homescreeen/homescreen.dart';

class decider extends StatefulWidget {
  const decider({super.key});

  @override
  State<decider> createState() => _deciderState();
}

class _deciderState extends State<decider> {
 late bool seeen;
  Future checkFirstSeenornot() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      seeen = true;
      return "authenticationscreen";
    } else {
      // Set the flag to true at the end of onboarding screen if everything is successfull and so I am commenting it out
       await prefs.setBool('seen', true);
      seeen = false;
      return "firsttimescreen";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: checkFirstSeenornot(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return seeen ? authenticationscreen() : firsttimescreen();
          }
        });
  }
}
