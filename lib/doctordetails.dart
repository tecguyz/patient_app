import 'package:flutter/material.dart';

import 'addpatientdetails.dart';
import 'reusable/custombttnauth.dart';

class Doctordeatils extends StatefulWidget {
  Doctordeatils({Key? key}) : super(key: key);

  @override
  State<Doctordeatils> createState() => _DoctordeatilsState();
}

class _DoctordeatilsState extends State<Doctordeatils> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Material(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 186, 201, 212),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 150)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Center(),
                  ),
                ],
              ),
              Container(
                height: 120.0,
                width: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/doctoer.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SafeArea(
                child: Container(
                    padding: EdgeInsets.only(
                        // left: deviceWidth(context) * .27,
                        top: deviceHeight(context) * 0.04),
                    height: MediaQuery.of(context).size.height * 0.61,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                      color: Colors.white54,
                    ),
                    child: Container(
                        child: Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          top: deviceHeight(context) * .01,
                          bottom: deviceHeight(context) * .01,
                          right: deviceHeight(context) * .01,
                        ),
                        child: const Text("Dr, johny sins",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(179, 14, 13, 13),
                                fontWeight: FontWeight.bold,
                                fontSize: 27.0)),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            margin: EdgeInsets.only(
                              top: deviceHeight(context) * .01,
                              bottom: deviceHeight(context) * .01,
                              right: deviceHeight(context) * .03,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur aytf adipiscing elit asdf as asdufh ia. Fusce ac rhoncus enim. Mauris hendrerit eu neque vel feugiat. Pellentesque quis.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 19, 17, 17),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              top: deviceHeight(context) * .01,
                              // bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .34,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("Degree",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 8, 7, 7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              // top: deviceHeight(context) * .01,
                              bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .20,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("MBBS, BDS, MASN, ASD",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 19, 17, 17),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              top: deviceHeight(context) * .01,
                              // bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .34,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("Experiance",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 8, 7, 7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              // top: deviceHeight(context) * .01,
                              bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .20,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("10 years",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 19, 17, 17),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              top: deviceHeight(context) * .01,
                              // bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .34,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("Address",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 8, 7, 7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              // top: deviceHeight(context) * .01,
                              bottom: deviceHeight(context) * .01,
                              right: deviceHeight(context) * .10,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text(
                                "House name (h) place,town, asdfj asdfasdjf ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 19, 17, 17),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              top: deviceHeight(context) * .01,
                              // bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .34,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text("Contact",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 8, 7, 7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.only(
                              // top: deviceHeight(context) * .01,
                              bottom: deviceHeight(context) * .01,
                              // right: deviceHeight(context) * .20,
                              left: deviceHeight(context) * .03,
                            ),
                            child: const Text(
                                "drsmasdasfd@gmail.com \n +91 9749723946",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color.fromARGB(179, 19, 17, 17),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: deviceHeight(context) * 0.02,
                            bottom: deviceHeight(context) * 0.01),
                        child: SizedBox(
                          height: screenheight * (0.06),
                          width: screenwidth * (0.9),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddPatientdetails()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: const Text(
                              'Book An Appointment',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ]))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
