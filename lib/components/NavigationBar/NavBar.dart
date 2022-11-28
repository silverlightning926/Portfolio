import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'NavBarButton.dart';

class NavBar extends StatelessWidget {
  final AutoScrollController autoScrollController;

  const NavBar({
    Key? key,
    required this.autoScrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topRight,
        child: Row(
          children: [
            NavBarButton(
              buttonText: "<Home/>",
              onPressed: () => scrollToIndex(0),
            ),
            const SizedBox(width: 25),
            NavBarButton(
              buttonText: "<About/>",
              onPressed: () => scrollToIndex(1),
            ),
            const SizedBox(width: 25),
            NavBarButton(
              buttonText: "<Experience/>",
              onPressed: () => scrollToIndex(2),
            ),
            const SizedBox(width: 25),
            NavBarButton(
              buttonText: "<Projects/>",
              onPressed: () => scrollToIndex(3),
            ),
            const SizedBox(width: 25),
            NavBarButton(
              buttonText: "<Contact/>",
              onPressed: () => scrollToIndex(4),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> scrollToIndex(int index) {
    return autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.middle,
    );
  }
}
