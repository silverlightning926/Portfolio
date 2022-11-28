import 'package:flutter/material.dart';
import 'package:portfolio/components/ContactPage.dart';
import 'package:portfolio/components/ExperiencePage.dart';
import 'package:portfolio/components/HomePage.dart';
import 'package:portfolio/components/ProjectsPage.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../components/AboutPage.dart';
import '../components/NavigationBar/NavBar.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AutoScrollController autoScrollController = AutoScrollController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 50, right: 50),
          child: Column(
            children: [
              NavBar(
                autoScrollController: autoScrollController,
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return ListView(
                      controller: autoScrollController,
                      children: [
                        AutoScrollTag(
                          key: const ValueKey(0),
                          index: 0,
                          controller: autoScrollController,
                          child: HomePage(constraints: constraints),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(1),
                          index: 1,
                          controller: autoScrollController,
                          child: AboutPage(constraints: constraints),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(2),
                          index: 2,
                          controller: autoScrollController,
                          child: ExperiencePage(constraints: constraints),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(3),
                          index: 3,
                          controller: autoScrollController,
                          child: ProjectsPage(constraints: constraints),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(4),
                          index: 4,
                          controller: autoScrollController,
                          child: ContactPage(constraints: constraints),
                        ),
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
