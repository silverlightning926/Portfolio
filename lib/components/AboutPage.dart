import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  final BoxConstraints constraints;

  const AboutPage({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: constraints.maxHeight,
      child: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
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
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "My name is Siddharth Rao. I usually go by Sidd. "
                    "I am currently studying at the University Of Washington - Bothell. Currently completing my last year of my bachelor's degree in computer science and software engineering.\n\n"
                    "My passion for technology started from a young age. Growing up, I learned multiple skill sets such as programming languages, frameworks, tools, and more!\n\n"
                    "I am now looking for more computer science opportunities, in industry and other environments, to grow my skill set far beyond.",
                    style: GoogleFonts.mPlus1Code().copyWith(
                      fontSize: 20,
                      color: const Color(0xAAFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Image.asset(
                "./assets/images/profileImage.jpg",
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
