import 'package:flutter/material.dart';

import 'reusable/custombttnauth.dart';
import 'reusable/customnumbfield.dart';
import 'reusable/customtextfieldauth.dart';

class AddPatientdetails extends StatefulWidget {
  AddPatientdetails({Key? key}) : super(key: key);

  @override
  State<AddPatientdetails> createState() => _AddPatientdetailsState();
}

class _AddPatientdetailsState extends State<AddPatientdetails> {
  String _selectedGender = 'time =2';
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
          actions: [],
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80),
            child: const Text(
              "Make New Appointment",
              style:
                  TextStyle(color: Color.fromARGB(255, 5, 4, 4), fontSize: 28),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.2),
              child: Column(children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: deviceWidth(context) * 0.01,
                      bottom: deviceHeight(context) * 0.01,
                    ),
                    child: const Text(
                      'Patients Name',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const Customtextauth(
                  inputText: 'your name',
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: deviceHeight(context) * 0.02,
                      left: deviceWidth(context) * 0.02,
                      bottom: deviceHeight(context) * 0.01,
                    ),
                    child: const Text(
                      'Patients Age',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const Customtextauth(
                  inputText: '15',
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: deviceHeight(context) * 0.02,
                      left: deviceWidth(context) * 0.02,
                      bottom: deviceHeight(context) * 0.01,
                    ),
                    child: const Text(
                      'Available date will be shown',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const Customnumbfeildauth(inputText: '15-06-2022'),
                Padding(
                  padding: EdgeInsets.only(top: deviceHeight(context) * .02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Please let us know your prefered time'),
                      ListTile(
                        leading: Radio<String>(
                          value: 'time1',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('10:00 AM - 12:30 PM'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: 'time2',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('01:00 PM - 03:00 PM'),
                      ),
                      // const SizedBox(height: 25),
                      // Text(_selectedGender == 'male'        ///// it will show details
                      //     ? 'Hello gentlement!'
                      //     : 'Hi lady!')
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: deviceHeight(context) * 0.05,
                        bottom: deviceHeight(context) * 0.04),
                    child: const Custombttnauth(text: 'Register')),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
