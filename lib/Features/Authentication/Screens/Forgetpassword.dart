// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wayin/Features/Authentication/Screens/EmailOtp.dart';
import 'package:wayin/Features/Authentication/Screens/Login.dart';
import 'package:wayin/Features/Authentication/Screens/PhoneOtp.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Make Selection !',
                  style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                        fontSize: 27,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Select one of the options given below to reset your password.',
                  style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EmailOtp()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        fixedSize: const Size(double.infinity, 80)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mail_outline_rounded,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              'E-mail',
                              style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Reset via Mail Verification',
                              style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PhoneOtp()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        fixedSize: const Size(double.infinity, 80)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mobile_friendly_rounded,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mobile No.',
                              style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Reset via Mobile No. Verification',
                              style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 40),
                  backgroundColor: Colors.teal,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Text(
                'Return To Login',
                style: GoogleFonts.lexend(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ]),
      ),
    );
  }
}
