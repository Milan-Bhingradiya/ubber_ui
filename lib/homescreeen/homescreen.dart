import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uber_ui/widgets/bottomnavigationbar.dart';
import 'package:uber_ui/homescreeen/bottomsheet.dart';
import 'package:uber_ui/provider.dart';

import '../widgets/button.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List<Image> list_of_img_for_swipper = [
    Image.asset("assets/ubber_banner1.png"),
    Image.asset("assets/ubber_banner2.png"),
    Image.asset("assets/ubber_banner3.png"),
  ];
  TimeOfDay _time = TimeOfDay(hour: 1, minute: 15);
  String hour = "1";
  String minute = "25";

  void selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
        hour = newTime.hour.toString();
        minute = newTime.minute.toString();
      });
    }
  }

  void selectdate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    String? datenum = date!.day.toString();
    String? dateyear = date.year.toString();
    String? datemonth = date.month.toString();

    setState(() {
      Provider.of<provider>(context, listen: false).display_date =
          "$datenum-" + "$datemonth-" + "$dateyear";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              child: CarouselSlider(
                items: list_of_img_for_swipper,
                options: CarouselOptions(autoPlay: true),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFeeeeee),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 95,
                      width: MediaQuery.of(context).size.width / 2.30,
                    ),
                    Positioned(
                        right: 0,
                        child: Image.asset("assets/homepage_car.png")),
                    Positioned(
                        left: 7,
                        bottom: 5,
                        child: Text(
                          "Ride",
                          style: TextStyle(fontSize: 22),
                        ))
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFeeeeee),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 95,
                      width: MediaQuery.of(context).size.width / 2.30,
                    ),
                    Positioned(
                        right: 0,
                        child: Image.asset("assets/homepage_car2.png")),
                    Positioned(
                        left: 7,
                        bottom: 5,
                        child: Text(
                          "Intercity",
                          style: TextStyle(fontSize: 22),
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            // where to? button
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 222, 222),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Text(
                            "Where To ?",
                            style: TextStyle(fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return bottomsheet();
                          },
                        );
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.watch_later_outlined),
                            Text("Now"),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 38,
                        width: 90,
                      ),
                    ),
                  )
                ],
              ),
              // width: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.stars_sharp),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Choose a saved place",
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.stars_sharp),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Set Destination on Map",
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),

            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Around you",
                  style: TextStyle(fontSize: 18),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                  initialCameraPosition:
                      CameraPosition(zoom: 3, target: LatLng(21, 71))),
            )
          ],
        ),
      ),
    ));
  }
}
