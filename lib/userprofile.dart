import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'addpatientdetails.dart';
import 'dashboard.dart';
import 'reusable/customnumbfield.dart';
import 'reusable/customtextfieldauth.dart';

class Userprofile extends StatefulWidget {
  Userprofile({Key? key}) : super(key: key);

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  Color backgroundColor = const Color.fromARGB(255, 255, 255, 255);
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight(context) * 0.01,
                right: deviceWidth(context) * 0.73,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: const Text(
                'Name',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.only(
                  right: deviceWidth(context) * 0.07,
                  left: deviceWidth(context) * 0.07,
                  // top: deviceHeight(context) * 0.01,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: ' David babu',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight(context) * 0.01,
                right: deviceWidth(context) * 0.73,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: const Text(
                'Place',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.only(
                  right: deviceWidth(context) * 0.07,
                  left: deviceWidth(context) * 0.07,
                  // top: deviceHeight(context) * 0.01,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: ' Eriyad',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight(context) * 0.01,
                right: deviceWidth(context) * 0.75,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: const Text(
                'Age',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: deviceWidth(context) * 0.07,
                left: deviceWidth(context) * 0.07,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  hintText: '91',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight(context) * 0.01,
                right: deviceWidth(context) * 0.58,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: const Text(
                'Phone Number',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: deviceWidth(context) * 0.07,
                left: deviceWidth(context) * 0.07,
                bottom: deviceHeight(context) * 0.01,
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  hintText: '91 90485869654',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: deviceHeight(context) * 0.04,
                  bottom: deviceHeight(context) * 0.01),
              child: SizedBox(
                height: screenheight * (0.06),
                width: screenwidth * (0.88),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
