import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final Color text_color;

  final Color color;
  final VoidCallback func;


  const button({
    super.key,
    required this.text,
    required this.text_color,
    required this.color,
    required this.func,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          height: 45,
          width: 340,
          child: Center(
            child: Text(
              "$text",
              style: TextStyle(
                  color: text_color, fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
