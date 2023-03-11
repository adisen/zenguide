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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding2()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
            Column(
              children: [
                Text('Do you know what a credit score is?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 30.0),
                        width: 100,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            side:
                                const BorderSide(color: Colors.black, width: 1),
                          ),
                          child: const Text('Yes'),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: const BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: const Text('No'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 100.0),
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
