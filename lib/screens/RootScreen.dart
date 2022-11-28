import 'package:flutter/material.dart';
import 'package:portfolio/components/HomePage.dart';

import '../components/AboutPage.dart';
import '../components/NavigationBar/NavBar.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final GlobalKey homeScreenKey = GlobalKey();
  final GlobalKey aboutScreenKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
          child: Column(
            children: [
              NavBar(
                homeScreenKey: homeScreenKey,
                aboutScreenKey: aboutScreenKey,
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return ListView(
                      children: [
                        HomePage(key: homeScreenKey, constraints: constraints),
                        AboutPage(
                            key: aboutScreenKey, constraints: constraints),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
