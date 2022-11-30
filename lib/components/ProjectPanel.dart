import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPanel extends StatelessWidget {
  final String headingText;
  final String subHeadingText;
  final List<IconButton> actionBar;

  const ProjectPanel(
      {super.key,
      required this.headingText,
      required this.subHeadingText,
      required this.actionBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: actionBar,
            ),
          ],
        ),
      ),
    );
  }
}
