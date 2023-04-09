import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wayin/Features/Authentication/Screens/Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 185,
                child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_9e8yoqkm.json',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 135, 0),
                child: Text('Get on Board!',
                    style: GoogleFonts.lexendDeca(
                        textStyle: const TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                child: Text('Create your profile to start your journey.',
                    style: GoogleFonts.lexendDeca(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ))),
              ),
              Form(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.teal)),
                              label: Text('Full Name'),
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.person_outline_rounded,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.teal)),
                              label: Text('Email'),
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.black)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.teal)),
                              label: Text('PhoneNo'),
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.teal)),
                            prefixIcon: Icon(
                              Icons.fingerprint,
                              color: Colors.black,
                            ),
                            label: Text('Password'),
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 10)),
                          onPressed: () {},
                          child: Text('Signup',
                              style: GoogleFonts.lexend(
                                  textStyle: const TextStyle(fontSize: 20))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          const Center(
                            child: Text(
                              '------------ OR ------------',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              icon: Container(
                                height: 20,
                                width: 20,
                                child: const Image(
                                  image: AssetImage('assets/google.png'),
                                ),
                              ),
                              label: const Text(
                                '  Sign-In with Google',
                                style: TextStyle(
                                    letterSpacing: 1, color: Colors.black),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Text.rich(
                              TextSpan(
                                  text: 'Already Have An Account ? ',
                                  style: GoogleFonts.lexend(
                                      textStyle: const TextStyle(
                                          fontSize: 15, color: Colors.black)),
                                  children: const [
                                    TextSpan(
                                        text: 'Login',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    )));
  }
}
