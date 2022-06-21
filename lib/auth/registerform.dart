import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/otpform.dart';
import 'package:flutter_application_1/reusable/custombttnauth.dart';
import 'package:flutter_application_1/reusable/customnumbfield.dart';
import 'package:flutter_application_1/reusable/customtextfieldauth.dart';

import 'otpverifier.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  Color backgroundColor = const Color.fromARGB(255, 255, 255, 255);
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {
                // controller.jumpToPage(2);
              },
              style: TextButton.styleFrom(
                primary: Colors.black87,
              ),
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80),
            child: const Text(
              "Create New Account",
              style:
                  TextStyle(color: Color.fromARGB(255, 5, 4, 4), fontSize: 30),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: deviceWidth(context) * 0.70,
                    bottom: deviceHeight(context) * 0.01,
                  ),
                  child: const Text(
                    'Name',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Customtextauth(
                  inputText: 'your name',
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.02,
                    right: deviceWidth(context) * 0.70,
                    bottom: deviceHeight(context) * 0.01,
                  ),
                  child: const Text(
                    'Place',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Customtextauth(
                  inputText: 'select place',
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.02,
                    right: deviceWidth(context) * 0.67,
                    bottom: deviceHeight(context) * 0.01,
                  ),
                  child: const Text(
                    'Number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const Customnumbfeildauth(inputText: 'Mobile number'),
                Padding(
                  padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.005,
                    right: deviceWidth(context) * 0.25,
                    bottom: deviceHeight(context) * 0.01,
                  ),
                  child: const Text(
                    'An OTP will be sent to this number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight(context) * 0.03,
                        bottom: deviceHeight(context) * 0.05),
                    child: const Custombttnauth(text: 'Register')),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: deviceWidth(context) * 0.12),
                      child: const Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: deviceWidth(context) * 0.1),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Verificatoin()),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: primary,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
