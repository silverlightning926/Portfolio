import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SelectableText(
              "Projects",
              style: GoogleFonts.mPlus1Code().copyWith(
                fontSize: 60,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
