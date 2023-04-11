import 'package:flutter/material.dart';

import '../../home/views/home.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel();

  List<Widget> pages = [
    const Home(),
    Container(),
    Container(),
  ];
  int currentPage = 0;

  void changePage(int newPage) {
    if (newPage != currentPage) {
      currentPage = newPage;
      notifyListeners();
    }
  }
}
