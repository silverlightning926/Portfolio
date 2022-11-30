import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/ProjectPanel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html';

class ProjectsPage extends StatelessWidget {
  final BoxConstraints constraints;

  const ProjectsPage({
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
              "Projects",
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
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3,
                children: [
                  ProjectPanel(
                    headingText: "Portfolio",
                    subHeadingText: "Personal",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/silverlightning926/Portfolio.git",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "2022 FRC Robot - Casey",
                    subHeadingText: "FRC #4089 - Stealth Robotics",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.drafting_compass),
                        onPressed: () => _launchUrl(
                            "https://cad.onshape.com/documents/c4f311702e16c0341cee0c56/w/1c145bb51bfdcf02dcd12293/e/574f47c659a7a118ad146a5c"),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/Stealth-Robotics/Stealth2022.git",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(Icons.timeline_rounded),
                        onPressed: () => _launchUrl(
                          "https://www.thebluealliance.com/team/4089/2022",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.film),
                        onPressed: () => _launchUrl(
                          "https://youtu.be/UaPPj5nVYAQ",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "SensiAir",
                    subHeadingText: "Sensiable",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/silverlightning926/SensiAir-Mobile.git",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "2021 FTC Robot",
                    subHeadingText: "FTC #13648 - Jankbot",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/Stealth-Robotics/FreightFrenzy2021-Jankbot13648.git",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(Icons.timeline_rounded),
                        onPressed: () => _launchUrl(
                          "https://ftcscout.org/teams/13648?season=2021",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "2020 FTC Robot",
                    subHeadingText: "FTC #13648 - Jankbot",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/Stealth-Robotics/UltimateGoal2020-Jankbot13648.git",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(Icons.timeline_rounded),
                        onPressed: () => _launchUrl(
                          "https://ftcscout.org/teams/13648?season=2020",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.film),
                        onPressed: () => _launchUrl(
                          "https://www.youtube.com/playlist?list=PL01tmupz_o-VICrM19rMl1HtCMfTdZbzA",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "Lifely",
                    subHeadingText: "Paradox Entertainment",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/silverlightning926/Lifely.git",
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(Icons.android_rounded),
                        onPressed: () => _launchUrl(
                          "https://play.google.com/store/apps/details?id=com.paradoxentertainment.lifely",
                        ),
                      ),
                    ],
                  ),
                  ProjectPanel(
                    headingText: "68K-Disassembler",
                    subHeadingText: "CSS 422",
                    actionBar: [
                      IconButton(
                        splashRadius: 20,
                        icon: const Icon(FontAwesome5.code),
                        onPressed: () => _launchUrl(
                          "https://github.com/silverlightning926/68K-Disassembler.git",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  WindowBase _launchUrl(String url) {
    return window.open(
      url,
      "",
    );
  }
}
