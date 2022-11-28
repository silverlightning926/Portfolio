import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final BoxConstraints constraints;

  const HomePage({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Siddharth\nRao",
              style: GoogleFonts.mPlus1Code().copyWith(
                fontSize: 100,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "I am a software engineering student currently in my last year at the University of Washington - Bothell.\n\n"
                "Always looking to learn more. If you know of any open opportunities, please feel free to contact me!",
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 22,
                  color: const Color(0xAAFFFFFF),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                "> Learn More",
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 17,
                  color: const Color(0xFF4AF626),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
