import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperiencePanel extends StatelessWidget {
  final String headingText;
  final String subHeadingText;
  final String subtitleText;
  final String bgImagePath;

  const ExperiencePanel({
    Key? key,
    required this.headingText,
    required this.subHeadingText,
    required this.subtitleText,
    required this.bgImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        image: DecorationImage(
          image: AssetImage(bgImagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            headingText,
            textAlign: TextAlign.center,
            style: GoogleFonts.mPlus1Code().copyWith(
              fontSize: 23,
            ),
          ),
          Text(
            subHeadingText,
            textAlign: TextAlign.center,
            style: GoogleFonts.mPlus1Code().copyWith(
              fontSize: 20,
            ),
          ),
          Text(
            subtitleText,
            textAlign: TextAlign.center,
            style: GoogleFonts.mPlus1Code().copyWith(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
