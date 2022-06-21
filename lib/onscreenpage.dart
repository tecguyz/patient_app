import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/otpform.dart';
// import 'package:flutter_application_1/rootpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onscreenpage extends StatefulWidget {
  const Onscreenpage({Key? key}) : super(key: key);

  @override
  State<Onscreenpage> createState() => _OnscreenpageState();
}

class _OnscreenpageState extends State<Onscreenpage> {
  final controller = PageController();
  bool islastpage = false;
  Color primary = const Color.fromARGB(255, 46, 89, 233);
  Color backgroundColor = const Color.fromARGB(255, 255, 255, 255);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buildPager(
          {required Color color,
          required String urlimage,
          required String title,
          required String subtitle}) =>
      Container(
        padding: const EdgeInsets.only(top: 39.0),
        color: color,
        child: Column(
          children: [
            Image.asset(
              urlimage,
              fit: BoxFit.cover,
              width: 300,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              title,
              style: TextStyle(
                color: primary,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                subtitle,
                style: const TextStyle(
                    color: Color.fromARGB(255, 14, 14, 13), fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: const EdgeInsets.only(bottom: 200.0),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(
              () {
                islastpage = index == 2;
              },
            );
          },
          children: [
            buildPager(
                color: backgroundColor,
                urlimage: 'images/front.jpg',
                title: 'Register',
                subtitle:
                    'This app makes it easier \nto make apponitment with your doctor easier. \nWe are always praying for your well being'),
            buildPager(
                color: backgroundColor,
                urlimage: 'images/front.jpg',
                title: 'Book',
                subtitle:
                    'This app makes it easier to make \nappointment with your doctor easier, \nWe are always praying for well being'),
            buildPager(
                color: backgroundColor,
                urlimage: 'images/front.jpg',
                title: 'Cure',
                subtitle:
                    'This app makes it eaier to make \nappointment with your doctor easier \nWe are always praying for well being'),
          ],
        ),
      ),
      bottomSheet: islastpage
          ? TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                primary: Colors.white,
                backgroundColor: primary,
                minimumSize: const Size.fromHeight(95),
              ),
              child: const Text(
                'Get started',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OtpForm(),
                  ),
                );
              },
            )
          : Container(
              color: backgroundColor,
              padding: const EdgeInsets.only(top: 1.0),
              height: 250,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 39.0,
                    ),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                            spacing: 16,
                            dotColor: Colors.black26,
                            activeDotColor: Colors.teal.shade700),
                        onDotClicked: (index) {
                          controller.animateToPage(index,
                              duration: const Duration(microseconds: 800),
                              curve: Curves.easeIn);
                        },
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: primary,
                      fixedSize: const Size(280, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 50.0),
                    // padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black26,
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
