import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF287bff),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Welcome to your Financial Assistant',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      height: 1.4,
                      fontFamily: 'Montserrat'),
                )),
            Container(
                margin: const EdgeInsets.only(top: 200.0),
                child: IconButton(
                    icon: const Icon(Icons.arrow_right_alt_sharp),
                    iconSize: 100,
                    color: Colors.black,
                    onPressed: () {
                      print('Pressed');
                    })),
          ],
        ),
      ),
    );
  }
}
