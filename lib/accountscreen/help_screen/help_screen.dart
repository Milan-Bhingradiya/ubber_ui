import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uber_ui/accountscreen/help_screen/widgets/helpscreen_rectangle_container.dart';

class helpscreen extends StatelessWidget {
  const helpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  expandedHeight: 120,
                  //       title: Text("helpppp"),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      "Help",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),

                  floating: true,
                  pinned: true,
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "All Topics",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
                    ),
                  ),
                  helpscreen_rectangle_container(
                    title: "Help with a trip ",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "Account ",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "Membership and loyalty",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "A Guild to Uber ",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "Ubber Shuttle issues",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "Accessibilty ",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "About Cancellation policy",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  ),
                  helpscreen_rectangle_container(
                    title: "Report a map issue",
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => helpscreen(),
                          ));
                    },
                  )
                ],
              ),
            )));
  }
}
