import 'package:flutter/material.dart';
// import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/onscreenpage.dart';
// import 'package:flutter_application_1/rootpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homescreennavbar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         initialRoute: "/",
      routes: {
        "/dash": (context) => const Dashboard(),
        // "/archipel": (context) => const Detail(),
        // "/finika": (context) => const Detail2(),
      },
        // initialRoute: '/',
        // routes: {
        //   '/' :(context) => HomePage(),
        //   // '/doctor_details' :(context) => DoctorDetailsScreen(),
        // },
        
        home: showHome ? const Dashboard() : Onscreenpage(), //// home
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color.fromRGBO(0, 137, 216, 1),
        ));
  }
}
