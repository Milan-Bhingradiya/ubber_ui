import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:uber_ui/accountscreen/accountscreen.dart';
import 'package:uber_ui/activityscreen/activityscreen.dart';
import 'package:uber_ui/widgets/bottomnavigationbar.dart';
import 'package:uber_ui/homescreeen/homescreen.dart';

import '../provider.dart';

class afterlogin_default_screen extends StatefulWidget {
  const afterlogin_default_screen({super.key});

  @override
  State<afterlogin_default_screen> createState() =>
      _afterlogin_default_screenState();
}

class _afterlogin_default_screenState extends State<afterlogin_default_screen> {
  final List<Widget> _children = [
    homescreen(),
    activityscreen(),
    accountscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[Provider.of<provider>(context, listen: true)
          .selected_index_of_bottomnavigationbar],
      bottomNavigationBar: bottomnavigationbar_widget(),
    );
  }
}
