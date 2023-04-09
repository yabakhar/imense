import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../home/views/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> pages = [Home()];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Overview',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.5,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        actions: [
          Container(
            width: 35,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/bell.svg",
              height: 25,
            ),
          ),
          Container(
            width: 60,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/person.png',
              height: 40,
            ),
          )
        ],
      ),
      body: pages[currentPage],
    );
  }
}
