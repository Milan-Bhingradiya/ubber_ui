import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class activityscreen extends StatefulWidget {
  const activityscreen({super.key});

  @override
  State<activityscreen> createState() => _activityscreenState();
}

class _activityscreenState extends State<activityscreen> {
  Future<String> temp() {
    return Future.delayed(Duration(seconds: 1), () {
      return "a";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Activity",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Past",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          FutureBuilder(
            future: temp(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else
                return Text(
                  "You Didn't have any Past activity",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                );
            },
          )
        ],
      ),
    ));
  }
}
