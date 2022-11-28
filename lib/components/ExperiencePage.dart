import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/ExperiencePanel.dart';

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
            SizedBox(
              width: constraints.maxWidth,
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: 2,
                children: const [
                  ExperiencePanel(
                    headingText: "Software Engineer & Technical Specialist",
                    subHeadingText: "City Of Carnation",
                    subtitleText: "Nov 2022 - Current",
                    bgImagePath: "./images/cityOfCarnation.png",
                  ),
                  ExperiencePanel(
                    headingText: "Computer Science Teaching Assistant",
                    subHeadingText: "University Of Washington",
                    subtitleText: "Sep 2022 - Current",
                    bgImagePath: "./images/universityOfWashington.png",
                  ),
                  ExperiencePanel(
                    headingText: "Mobile Application Developer & Designer",
                    subHeadingText: "Sensiable",
                    subtitleText: "July 2022 - Current",
                    bgImagePath: "./images/cityOfCarnation.png",
                  ),
                  ExperiencePanel(
                    headingText: "Mentor & Volunteer",
                    subHeadingText: "FRC Team #4089 & FTC Team #13648",
                    subtitleText: "Sep 2021 - Current",
                    bgImagePath: "./images/cityOfCarnation.png",
                  ),
                  ExperiencePanel(
                    headingText: "Lead Developer & Project Lead",
                    subHeadingText: "Duvall Days",
                    subtitleText: "Nov 2018 - Jun 201",
                    bgImagePath: "./images/cityOfCarnation.png",
                  ),
                  ExperiencePanel(
                    headingText: "Head of Software, Vice President",
                    subHeadingText: "FRC Team #4089 & FTC Team #13648",
                    subtitleText: "Sep 2017 - Jun 2021",
                    bgImagePath: "./images/cityOfCarnation.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
