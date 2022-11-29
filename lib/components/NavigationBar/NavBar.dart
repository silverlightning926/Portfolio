import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            const SizedBox(width: 25),
            MaterialButton(
              elevation: 0,
              hoverElevation: 0,
              color: Colors.transparent,
              hoverColor: const Color.fromARGB(100, 255, 255, 255),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xFF03C03C),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Resume",
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> scrollToIndex(int index) {
    return autoScrollController.scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
  }
}
