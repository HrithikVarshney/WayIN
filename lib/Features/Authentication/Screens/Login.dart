import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wayin/Features/Authentication/Screens/Forgetpassword.dart';
import 'package:wayin/Features/Authentication/Screens/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 750,
            color: Colors.white,
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 200,
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_ucbyrun5.json'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Text(
                  'Welcome Back,',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 32, 0),
                child: Text(
                  'Make it work , Make it right , Make it fast',
                  style: GoogleFonts.lexend(
                      textStyle:
                          const TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              prefixIcon: Icon(
                                Icons.person_outline_outlined,
                                color: Colors.black,
                              ),
                              labelText: 'E-Mail',
                              labelStyle: TextStyle(color: Colors.black),
                              hintText: 'E-Mail',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: TextFormField(
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.black)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 3, color: Colors.teal)),
                            prefixIcon: const Icon(
                              Icons.fingerprint,
                              color: Colors.black,
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.black),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.teal),
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                              icon: _isObscured
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 255),
                        child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => const ForgetPassword(),
                              );
                            },
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 90, vertical: 10)),
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(fontSize: 18),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                            height: 15,
                          ),
                          Container(
                            width: 300,
                            height: 50,
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
                                      builder: (context) => const Signup()));
                            },
                            child: Text.rich(
                              TextSpan(
                                  text: 'Dont Have An Account ? ',
                                  style: GoogleFonts.lexend(
                                      textStyle: const TextStyle(
                                          fontSize: 15, color: Colors.black)),
                                  children: const [
                                    TextSpan(
                                        text: 'Signup',
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
              )
            ]),
          ),
        ),
      ),
    );
  }
}
