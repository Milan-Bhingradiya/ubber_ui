import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class longsquare extends StatelessWidget {
  final Icon icon;
  final String Title;
  final VoidCallback func;

  const longsquare({super.key, required this.icon, required this.Title, required this.func});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              width: 9,
            ),
            icon,
            SizedBox(
              width: 15,
            ),
            Text(
              Title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
