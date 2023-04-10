import 'package:flutter/material.dart';

import 'core/data/color.dart';
import 'features/dashboard/views/dashboard.dart';
import 'features/dashboard/views/splashScreen.dart';

void main() {
  runApp(const Imense());
}

class Imense extends StatelessWidget {
  const Imense({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imense',
      theme: ThemeData(
        primarySwatch: colorCustom,
        fontFamily: 'nunito',
      ),
      home: const SplashView(
        title: Text(
          "App name",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: splashColor,
        done: Dashboard(),
      ),
    );
  }
}
