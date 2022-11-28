import 'package:flutter/material.dart';

import 'NavBarButton.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        NavBarButton(
          buttonText: "<Home/>",
          onPressed: () {},
        ),
        const SizedBox(width: 25),
        NavBarButton(
          buttonText: "<About/>",
          onPressed: () {},
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
}
