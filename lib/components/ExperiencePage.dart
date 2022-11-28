import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ExperienceWidget.dart';

class ExperiencePage extends StatelessWidget {
  final BoxConstraints constraints;

  const ExperiencePage({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: constraints.maxHeight,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Experience",
              style: GoogleFonts.mPlus1Code().copyWith(
                fontSize: 60,
                fontWeight: FontWeight.w100,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color(0xFF03C03C),
                      Color(0xFF17B169),
                    ],
                  ).createShader(
                    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                  ),
              ),
            ),
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Software Engineer & Technical Specialist",
              companyText: "City Of Carnation",
              timeText: "Nov 2022 - Current",
              bodyText:
                  "• Developing a mobile application that for citizens of the town which would include announcements, information, and more\n"
                  "• Managed, maintained, and updated different software systems used by the City of Carnation",
            ),
          ],
        ),
      ),
    );
  }
}
