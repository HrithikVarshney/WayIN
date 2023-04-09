import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_zl2c0cuv.json'),
                ),
                /*Text(
                  'CODE',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                Text(
                  'Verification',
                  style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),*/
                const SizedBox(height: 10.0),
                Text(
                  "Please Enter The Verification Code Sent At",
                  style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0),
                OtpTextField(
                    mainAxisAlignment: MainAxisAlignment.center,
                    fieldWidth: 50,
                    focusedBorderColor: Colors.black,
                    cursorColor: Colors.teal,
                    numberOfFields: 6,
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    onSubmit: (code) => print("OTP is => $code")),
                const SizedBox(height: 60.0),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 50),
                          backgroundColor: Colors.teal,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                      child: Text(
                        'Next',
                        style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
