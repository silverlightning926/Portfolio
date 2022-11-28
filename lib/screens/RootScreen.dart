import 'package:flutter/material.dart';
import 'package:portfolio/components/HomePage.dart';

import '../components/AboutPage.dart';
import '../components/NavigationBar/NavBar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UniqueKey homeScreenKey = UniqueKey();
    final UniqueKey aboutScreenKey = UniqueKey();

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
