import 'package:flutter/cupertino.dart';

class provider extends ChangeNotifier {
  String display_date = "Mon-21 Jan 2005";

  get display_date_getter {
    notifyListeners();
    return display_date;
  }
}
