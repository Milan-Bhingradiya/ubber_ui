import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber_ui/authscreen/authenticationscreen.dart';
import 'package:uber_ui/decider_screen_firsttime_or_olduser.dart';
import 'package:uber_ui/firsttimeonlyscreen/firsttime_only.dart';
import 'package:uber_ui/homescreeen/homescreen.dart';
import 'package:uber_ui/provider.dart';
import 'package:uber_ui/splashscreen.dart/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => provider()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "splashscreen",
          routes: {
            "splashscreen": (context) => splashscreen(),
            "decider": (context) => decider(),
            "authenticationscreen": (context) => authenticationscreen(),
            "firsttimescreen": (context) => firsttimescreen(),
          },
          title: 'Flutter Demo',
          theme: ThemeData(
            iconTheme: IconThemeData(color: Colors.black),
            //    textTheme: TextTheme(),
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
        ));
  }
}
