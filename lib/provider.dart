import 'package:flutter/cupertino.dart';

class provider extends ChangeNotifier {
  var selected_index_of_bottomnavigationbar = 0;

  void ontap_of_bottom_navigationbar(int value) {
    selected_index_of_bottomnavigationbar = value;
    notifyListeners();
  }

  String display_date = "Mon-21 Jan 2005";

 
}
