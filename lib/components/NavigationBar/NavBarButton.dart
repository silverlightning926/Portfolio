import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  const NavBarButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      hoverElevation: 0,
      color: Colors.transparent,
      hoverColor: const Color.fromARGB(100, 255, 255, 255),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: GoogleFonts.mPlus1Code().copyWith(
          fontSize: 17,
          color: const Color(0xFF4AF626),
        ),
      ),
    );
  }
}
