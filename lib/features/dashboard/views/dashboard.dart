import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../alert/views/alert_screen.dart';
import '../../home/views/home.dart';
import '../widgets/button_navigation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> pages = [
    const Home(),
    Container(),
    Container(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: const Color(0xff1488CC),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AlertScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: SizedBox(
          height: 75,
          child: Row(
            children: <Widget>[
              const Spacer(),
              Expanded(
                flex: 2,
                child: ButtonNavigation(
                  assetName: "assets/icons/grid.svg",
                  selected: currentPage == 0,
                  onPressed: () {
                    changePage(0);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              const Spacer(),
              Expanded(
                flex: 2,
                child: ButtonNavigation(
                  assetName: "assets/icons/observationIcon_1.svg",
                  selected: currentPage == 1,
                  onPressed: () {
                    changePage(1);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ButtonNavigation(
                  assetName: "assets/icons/report.svg",
                  selected: currentPage == 2,
                  onPressed: () {
                    changePage(2);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
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

  void changePage(int newPage) {
    if (newPage != currentPage) {
      currentPage = newPage;
      setState(() {});
    }
  }
}
