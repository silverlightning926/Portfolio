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
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Computer Science Teaching Assistant",
              companyText: "University Of Washington",
              timeText: "Sep 2022 - Current",
              bodyText:
                  "• Helped students if they have concerns or questions with class material, concepts, and beyond\n"
                  "• Evaluated and graded existing code bases, looking at implementation details, bugs, edge cases and more",
            ),
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Mobile Application Developer & Designer",
              companyText: "Sensiable",
              timeText: "Jul 2022 - Current",
              bodyText:
                  "• Planned and gathered requirements to create a specifications sheet and plan development thoroughly\n"
                  "• Created wireframes and mockups before development to insure proper development of the application\n"
                  "• Developed a mobile app, backend service, and database service to allow users to use Sensiable's IOT environmental sensor\n"
                  "• Created to be released on public facing app stores such as Apple's App Store and Google Play",
            ),
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Mentor",
              companyText: "FRC Team #4089 & FTC Team #13648",
              timeText: "Sep 2021 - Current",
              bodyText:
                  "• Mentored incoming students, teaching technical and soft skills and how to apply those concepts practically\n"
                  "• Created custom libraries and software to help better student learning and improve the efficiency, quality, and level of code.",
            ),
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Lead Developer & Project Lead",
              companyText: "Duvall Days",
              timeText: "Nov 2018 - Jun 2019",
              bodyText:
                  "• Volunteered to build a mobile app for the City of Duvall for their annual summer public festival\n"
                  "• Designed and built a mobile app to guide the public and promote local businesses and organizations\n"
                  "• Publicly published the app on Google's App Store and received multiple positive reviews",
            ),
            const SizedBox(height: 10),
            const ExperienceWidget(
              roleText: "Head of Software, Vice President",
              companyText: "FRC Team #4089 & FTC Team #13648",
              timeText: " Sep 2017 - Jun 2021",
              bodyText:
                  "• Designed, fabricated, and programmed robots to compete in an annual competition locally and globally\n"
                  "• Programmed robots using a variety of industry concepts as well as used many widely used third-party libraries\n"
                  "• Maintained and tested code frequently using multiple methods and tools such as Git to maintain reliability",
            ),
          ],
        ),
      ),
    );
  }
}
