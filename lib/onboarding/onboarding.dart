import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> list = <String>[
  '\$5,000 - \$9,000',
  '\$10,000 - \$15,000',
  '\$16,000 - \$20,000',
  '\$21,000 - \$25,000',
  '\$25,000 - \$100,000',
];

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
                      fontSize: 40,
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
                          fontSize: 40,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding3()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  String dropdownValue = list.first;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What is your living expenses?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: 280,
                    height: 80,
                    child: DropdownButtonFormField<String>(
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.black,
                      iconSize: 50,
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding4()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

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
                Text('Do you have a credit card?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding5()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding5 extends StatelessWidget {
  const Onboarding5({super.key});

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
                Text('Do you have a savings account?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 30.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding6()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding6 extends StatelessWidget {
  const Onboarding6({super.key});

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
                Text('How familiar are you with investments?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Icon(Icons.star,
                            color: Colors.white, size: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Icon(Icons.star,
                            color: Colors.white, size: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Icon(Icons.star,
                            color: Colors.white, size: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Icon(Icons.star,
                            color: Colors.white, size: 40),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: const Icon(Icons.star,
                            color: Colors.white, size: 40),
                      ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding7()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding7 extends StatelessWidget {
  const Onboarding7({super.key});

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
                Text('Do you have active loans?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 30.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding8()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class Onboarding8 extends StatelessWidget {
  const Onboarding8({super.key});

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
                Text('Do you know how to increase your credit score?',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          fontFamily: 'Montserrat'),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 30.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Onboarding6()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
