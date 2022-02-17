import 'package:flutter/cupertino.dart';

class UIService extends ChangeNotifier {
  int _counter = 0;
  late String _appBarTitle = '';

  String get appBarTitle {
    return _appBarTitle;
  }

  String get counter {
    return _counter.toString();
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void setAppBarTitle(String newTitle) {
    _appBarTitle = newTitle;
    notifyListeners();
  }
}
