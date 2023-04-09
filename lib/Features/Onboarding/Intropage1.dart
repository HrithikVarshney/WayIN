import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                height: 330,
                child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_fknfveir.json'),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Container(
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 10, 10, 10),
                        child: Text(
                          'Scan QR Code',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
