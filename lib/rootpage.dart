import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/records.dart';
import 'package:flutter_application_1/support.dart';

class Rootpage extends StatefulWidget {
  Rootpage({Key? key}) : super(key: key);

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentpage = 0;
  List<Widget> pages = [
    ///////// pages is argument we assigned the pages or screens

    const Dashboard(),
    Recordspage(),
    Supportpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.recent_actors_rounded), label: 'Appointments'),
          NavigationDestination(
              icon: Icon(Icons.support_agent), label: 'Support'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            /// to refresh the page for trasition or for live changes
            currentpage = index;
          });
        },
        selectedIndex: currentpage, // selected page
      ),
    );
  }
}
