import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/auth/registerform.dart';
import 'package:flutter_application_1/reusable/custombttnauth.dart';
import 'package:flutter_application_1/reusable/customnumbfield.dart';
import 'package:flutter_application_1/reusable/customtextfieldauth.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: const Color.fromARGB(255, 255, 255, 255),
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
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Image.asset(
              'images/front.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: deviceWidth(context) * 0.27,
            ),
            child: const Text(
              'OTP verification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: deviceWidth(context) * 0.06,
              top: deviceWidth(context) * 0.01,
            ),
            child: const Text(
              'We will send your a One Time Password to this \nmobile number',
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 14, 13), fontSize: 15),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: deviceHeight(context) * 0.05,
              left: deviceWidth(context) * 0.09,
              right: deviceWidth(context) * 0.09,
              bottom: deviceHeight(context) * 0.06,
            ),
            child: Column(
              children: [
                const Customnumbfeildauth(inputText: '+91 9999999999'),
                Padding(
                    padding: EdgeInsets.only(top: deviceHeight(context) * 0.02),
                    child: const Custombttnauth(text: 'Next')),
                Container(
                  margin: EdgeInsets.only(top: deviceHeight(context) * 0.09),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: deviceWidth(context) * 0.12),
                        child: const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: deviceWidth(context) * 0.12),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyRegister()),
                            );
                          },
                          style: TextButton.styleFrom(
                            primary: primary,
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
