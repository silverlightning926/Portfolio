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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                "About",
                style: GoogleFonts.mPlus1Code().copyWith(
                  fontSize: 60,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: SelectableText(
                  "My name is Siddharth Rao. I usually go by Sidd. "
                  "I am currently studying University Of Washington - Bothell. Currently completing my last year of my bachelor's degree in computer science and software engineering.\n\n"
                  "My passion for technology started from a young age. Growing up, I learned multiple skill sets such as programming languages, frameworks, tools, and more!\n\n"
                  "I am now looking for more computer science opportunities, in industry and other environments, to grow my skill set far beyond",
                  style: GoogleFonts.mPlus1Code().copyWith(
                    fontSize: 20,
                    color: const Color(0xAAFFFFFF),
                  ),
                ),
              ),
            ],
          ),
          Image.network(
            "https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=",
            scale: 1.5,
          ),
        ],
      ),
    );
  }
}
