import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            "Siddharth\nRao",
            style: GoogleFonts.mPlus1Code().copyWith(fontSize: 100),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: SelectableText(
              "I am a software engineering student currently in my last year at the University of Washington - Bothell.\n"
              "Always looking to learn more. If you know any open opportunities, please feel free to contact me!",
              style: GoogleFonts.mPlus1Code().copyWith(fontSize: 20),
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
              "<Learn More/>",
              style: GoogleFonts.mPlus1Code().copyWith(
                fontSize: 17,
                color: const Color(0xFF4AF626),
              ),
            ),
          )
        ],
      ),
    );
  }
}