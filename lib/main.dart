import 'package:flutter/material.dart';

import 'features/dashboard/views/dashboard.dart';

void main() {
  runApp(const Imense());
}

class Imense extends StatelessWidget {
  const Imense({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home:const  Dashboard(),
    );
  }
}
