import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceWidget extends StatelessWidget {
  final String roleText;
  final String companyText;
  final String timeText;
  final String bodyText;

  const ExperienceWidget({
    Key? key,
    required this.roleText,
    required this.companyText,
    required this.timeText,
    required this.bodyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Color(0x33FFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                roleText,
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                companyText,
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                bodyText,
                style: GoogleFonts.mPlus1Code().copyWith(fontSize: 17),
              ),
            ],
          ),
          Text(
            timeText,
            style: GoogleFonts.mPlus1Code().copyWith(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
