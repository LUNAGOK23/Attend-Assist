// ignore_for_file: file_names

import 'package:attend_assist/impstuff/colorss.dart';
import 'package:attend_assist/stuff_of_app/attendassistscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: RichText(
            text: TextSpan(
              text: 'A',
              style: GoogleFonts.lato(
                  fontSize: 25, fontWeight: FontWeight.bold, color: whitecolor),
              children: <TextSpan>[
                TextSpan(
                  text: 'tt',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      color: goldencolor,
                      fontSize: 30),
                ),
                TextSpan(
                  text: 'end Assist',
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: whitecolor),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue.shade800),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/2.png",
                height: 400,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AttendAssist()),
                  );
                },
                icon: Image.asset(
                  "assets/google.png",
                  width: 35,
                ),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(
                    fontSize: 18,
                    color: whitecolor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: blackcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                "----or----",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "assets/github.png",
                  width: 35,
                ),
                label: const Text(
                  "Continue with GitHub",
                  style: TextStyle(
                    fontSize: 18,
                    color: whitecolor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: blackcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
