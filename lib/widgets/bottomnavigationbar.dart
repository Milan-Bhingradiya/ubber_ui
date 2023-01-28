import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:uber_ui/accountscreen/accountscreen.dart';
import 'package:uber_ui/activityscreen/activityscreen.dart';
import 'package:uber_ui/provider.dart';

class bottomnavigationbar_widget extends StatelessWidget {
  List<BottomNavigationBarItem> list_of_BottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.local_activity), label: "Activity"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        Provider.of<provider>(context, listen: false)
            .ontap_of_bottom_navigationbar(value);
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      //  backgroundColor: Colors.black,
      items: list_of_BottomNavigationBarItem,
      type: BottomNavigationBarType.fixed,
      currentIndex: Provider.of<provider>(context, listen: false)
          .selected_index_of_bottomnavigationbar,
      // selectedItemColor: Colors.black,
      elevation: 5,
    );
  }
}
