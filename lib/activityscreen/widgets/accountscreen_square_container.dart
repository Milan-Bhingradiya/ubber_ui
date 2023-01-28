import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class square_container extends StatelessWidget {
  final Icon icon;
  final String string;
  final Color color;
  final VoidCallback func;
  const square_container({
    super.key,
    required this.icon,
    required this.string,
    required this.color, required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 80,
        width: MediaQuery.of(context).size.width / 3.80,
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            icon,
            SizedBox(
              height: 10,
            ),
            Text(
              string,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
