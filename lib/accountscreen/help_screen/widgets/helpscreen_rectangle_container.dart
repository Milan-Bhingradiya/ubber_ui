import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class helpscreen_rectangle_container extends StatelessWidget {
  final String title;
  final VoidCallback func;
  const helpscreen_rectangle_container(
      {super.key, required this.title, required this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Icon(Icons.chevron_right_sharp)
          ],
        ),
      ),
    );
  }
}
