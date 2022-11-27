import 'package:flutter/material.dart';

import '../components/HomePage.dart';
import '../components/NavigationBar/NavBar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                child: ListView(
                  children: const [
                    HomePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
