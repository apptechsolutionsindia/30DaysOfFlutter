import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Tech Solutions"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To $days Days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
