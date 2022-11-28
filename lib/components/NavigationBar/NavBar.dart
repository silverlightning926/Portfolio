import 'package:flutter/material.dart';

import 'NavBarButton.dart';

class NavBar extends StatelessWidget {
  final GlobalKey homeScreenKey;
  final GlobalKey aboutScreenKey;

  const NavBar({
    Key? key,
    required this.homeScreenKey,
    required this.aboutScreenKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NavBarButton(
          buttonText: "<Home/>",
          onPressed: () {
            scrollToGlobalKey(homeScreenKey);
          },
        ),
        const SizedBox(width: 25),
        NavBarButton(
          buttonText: "<About/>",
          onPressed: () {
            scrollToGlobalKey(aboutScreenKey);
          },
        ),
        const SizedBox(width: 25),
        NavBarButton(
          buttonText: "<Experience/>",
          onPressed: () {},
        ),
        const SizedBox(width: 25),
        NavBarButton(
          buttonText: "<Projects/>",
          onPressed: () {},
        ),
        const SizedBox(width: 25),
        NavBarButton(
          buttonText: "<Contact/>",
          onPressed: () {},
        ),
      ],
    );
  }

  void scrollToGlobalKey(GlobalKey globalKey) {
    final targetContext = globalKey.currentContext;
    if (targetContext != null) {
      Scrollable.ensureVisible(
        targetContext,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    }
  }
}
