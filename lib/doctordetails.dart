import 'package:flutter/material.dart';

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
                      left: deviceWidth(context) * .35,
                      top: deviceHeight(context) * 0.04),
                  height: MediaQuery.of(context).size.height * 0.61,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    color: Colors.white54,
                    
                  ),
                  child: const Text(  
                    'Dr, David beckam',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
