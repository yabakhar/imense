import 'package:flutter/material.dart';

import 'features/dashboard/views/dashboard.dart';

void main() {
  runApp(const Imense());
}

class Imense extends StatelessWidget {
  const Imense({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Imense',
      home: Dashboard(),
    );
  }
}
