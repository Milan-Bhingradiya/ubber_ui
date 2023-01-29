import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class tripsscreen extends StatefulWidget {
  const tripsscreen({super.key});

  @override
  State<tripsscreen> createState() => _tripsscreenState();
}

class _tripsscreenState extends State<tripsscreen> {
  Future<String> temp() {
    return Future.delayed(Duration(seconds: 1), () {
      return "aa";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  leading: const BackButton(
                    color: Colors.white, // <-- SEE HERE
                  ),
                  backgroundColor: Colors.black,
                  expandedHeight: 80,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 1.5,
                    title: Text(
                      "Trips",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  )),
            ];
          },
          body: SafeArea(
            child: Column(
              children: [
                FutureBuilder(
                  future: temp(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else
                      return Column(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 3.4),
                          Text("You haven't taken a trip yet"),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(border: Border.all()),
                              height: 50,
                              width: 100,
                              child: Center(
                                child: Text("Retry"),
                              ),
                            ),
                          )
                        ],
                      );
                  },
                )
              ],
            ),
          )),
    );
  }
}
