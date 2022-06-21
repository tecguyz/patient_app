import 'package:flutter/material.dart';

class Custombttnauth extends StatelessWidget {
  final String text;
  const Custombttnauth({Key? key, required this.text}) : super(key: key);
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenheight * (0.06),
      width: screenwidth * (0.8),
      child: ElevatedButton(
        onPressed: () {
          // controller.nextPage(
          //   duration: const Duration(microseconds: 500),
          //   curve: Curves.easeInOut,
          // );
        },
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
