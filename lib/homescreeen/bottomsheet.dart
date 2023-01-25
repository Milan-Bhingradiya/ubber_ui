import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:uber_ui/provider.dart';

import '../common/button.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({super.key});

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
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
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: 320,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                child: Center(
                    child: Text(
                  "Schedule a Ride",
                  style: TextStyle(fontSize: 25),
                )),
              )),
              Divider(
                thickness: 1,
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: (() {
                        selectdate();
                      }),
                      child: Container(
                          child: Center(
                        child: Text(
                          "${Provider.of<provider>(context, listen: false).display_date}",
                          style: TextStyle(fontSize: 25),
                        ),
                      )))),
              Divider(
                thickness: 1,
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: selectTime,
                      child: Container(
                          child: Center(
                        child: Text(
                          "$hour" ":" "$minute",
                          style: TextStyle(fontSize: 25),
                        ),
                      )))),
              Divider(
                thickness: 1,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    height: 55,
                    width: 340,
                    child: Center(
                      child: Text(
                        "Set Pickup Time",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,),

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
