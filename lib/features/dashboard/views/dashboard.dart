import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../alert/views/alert_screen.dart';
import '../view_models/dashboard_viewModel.dart';
import '../widgets/button_navigation.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DashboardViewModel>(create: (context) {
      return DashboardViewModel();
    }, builder: (context, _) {
      return Consumer<DashboardViewModel>(builder: (context, model, _) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
                      selected: model.currentPage == 0,
                      onPressed: () {
                        model.changePage(0);
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
                      selected: model.currentPage == 1,
                      onPressed: () {
                        model.changePage(1);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ButtonNavigation(
                      assetName: "assets/icons/report.svg",
                      selected: model.currentPage == 2,
                      onPressed: () {
                        model.changePage(2);
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
          body: model.pages[model.currentPage],
        );
      });
    });
  }
}
