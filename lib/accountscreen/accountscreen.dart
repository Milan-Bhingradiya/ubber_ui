import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uber_ui/accountscreen/help_screen/help_screen.dart';
import 'package:uber_ui/accountscreen/walletscreen/walletscreen.dart';
import 'package:uber_ui/activityscreen/widgets/accountscreen_longsquare_container.dart';
import 'package:uber_ui/activityscreen/widgets/accountscreen_square_container.dart';
import 'package:uber_ui/homescreeen/homescreen.dart';

class accountscreen extends StatefulWidget {
  const accountscreen({super.key});

  @override
  State<accountscreen> createState() => _accountscreenState();
}

class _accountscreenState extends State<accountscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          /////////////////////////////////////
          Container(
            child: Column(
              children: [
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                              "Milan Bhingradiya",
                              style: TextStyle(fontSize: 35),
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(
                            child: CircleAvatar(
                              radius: 70,
                              child: Image.asset("assets/ubber_banner1.png"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      square_container(
                        icon: Icon(Icons.adb_rounded),
                        string: "Help",
                        color: Color(0xFFeeeeee),
                        func: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => helpscreen(),
                              ));
                        },
                      ),
                      Flexible(
                        child: SizedBox(
                          width: 20,
                        ),
                      ),
                      square_container(
                        icon: Icon(Icons.wallet_sharp),
                        string: "Wallet",
                        color: Color(0xFFeeeeee),
                        func: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => walletscreen(),
                              ));
                        },
                      ),
                      Flexible(
                        child: SizedBox(
                          width: 20,
                        ),
                      ),
                      square_container(
                        icon: Icon(Icons.watch_later_rounded),
                        string: "Trips",
                        color: Color(0xFFeeeeee),
                        func: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homescreen(),
                              ));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    color: Color(0xFFeeeeee),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Safety check up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      "Book your safety profile by turning on additional features",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Expanded(flex: 1, child: CircleAvatar())
                      ],
                    ),
                  ),
                  Container(
                    height: 8,
                    color: Color(0xFFeeeeee),
                  ),
                  longsquare(
                    icon: Icon(Icons.message),
                    Title: "Messages",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ));
                    },
                  ),
                  longsquare(
                    icon: Icon(Icons.message),
                    Title: "Send a Gift",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ));
                    },
                  ),
                  longsquare(
                    icon: Icon(Icons.message),
                    Title: "Settings",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ));
                    },
                  ),
                  longsquare(
                    icon: Icon(Icons.message),
                    Title: "Earn by driving or delivering",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ));
                    },
                  ),
                  longsquare(
                    icon: Icon(Icons.message),
                    Title: "Legal",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homescreen(),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
