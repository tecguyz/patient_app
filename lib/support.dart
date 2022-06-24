import 'package:flutter/material.dart';

import 'doctordetails.dart';

class Supportpage extends StatefulWidget {
  Supportpage({Key? key}) : super(key: key);

  @override
  State<Supportpage> createState() => _SupportpageState();
}

class _SupportpageState extends State<Supportpage> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(top: 65)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Center(),
                ),
              ],
            ),
            Container(
              height: 220.0,
              width: 220.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/front.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Text(
              '24/7 Help Desk',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Tell us how we can help you',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Doctordeatils(),
                    ),
                  );
                }),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 72, 61, 57),
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: deviceHeight(context) * .085,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: const DecorationImage(
                                image: AssetImage('images/doctoer.jpeg'))),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceHeight(context) * 0.017, bottom: 3),
                            child: const Text(
                              'Chat',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                // backgroundColor: Colors.yellow,
                              ),
                            ),
                          ),
                          const Text(
                            'Let,s have a Chat and solve the problem',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Doctordeatils(),
                    ),
                  );
                }),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 72, 61, 57),
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: deviceHeight(context) * .085,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: const DecorationImage(
                                image: AssetImage('images/doctoer.jpeg'))),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceHeight(context) * 0.017, bottom: 3),
                            child: const Text(
                              'Tutorial',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                // backgroundColor: Colors.yellow,
                              ),
                            ),
                          ),
                          const Text(
                            'Find the answees for your questions',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Doctordeatils(),
                    ),
                  );
                }),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 72, 61, 57),
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: deviceHeight(context) * .085,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: const DecorationImage(
                                image: AssetImage('images/doctoer.jpeg'))),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceHeight(context) * 0.017, bottom: 3),
                            child: const Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                // backgroundColor: Colors.yellow,
                              ),
                            ),
                          ),
                          const Text(
                            'Email us your problem',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
