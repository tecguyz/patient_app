import 'package:flutter/material.dart';
import 'package:flutter_application_1/doctordetails.dart';

// import 'reusable/hotels.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    const Color primary = Color.fromARGB(255, 46, 89, 233);
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;
    var width = MediaQuery.of(context).size.width;

    var safearea = MediaQuery.of(context).padding.top;
    List items = [
      'Select place',
      'Eriyad',
      'Edavilangu',
    ];
    String? selecteditem = 'Select place';
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 245, 252),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
                top: deviceHeight(context) * 0.05,
                right: deviceWidth(context) * 0.03,
                left: deviceWidth(context) * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: safearea,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: deviceWidth(context) * 0.22,
                                ),
                                child: const Text(
                                  "Hi Sachit",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(190, 7, 16, 24),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: deviceWidth(context) * 0.31),
                                child: TextButton.icon(
                                  onPressed: null,
                                  style: TextButton.styleFrom(
                                      // backgroundColor: Color.fromARGB(255, 242, 229, 188),
                                      textStyle: const TextStyle(
                                          color: primary,
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic)),
                                  icon: const Icon(Icons.room_rounded),
                                  label: const Text('Eriyad'),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Doctordeatils(),
                                ),
                              );
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    right: deviceWidth(context) * 0.03,
                                    bottom: deviceWidth(context) * 0.09),
                                child: CircleAvatar(
                                  radius: 28.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.asset('images/front.jpg'),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19, top: 25),
                  child: Text(
                    "Make an Appointment",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: primary),
                  ),
                ),
                SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 62,
                            width: 310,
                            child: Container(
                              // margin: EdgeInsets.only(top: deviceHeight(context) * 0.03),
                              child: Expanded(
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            width: 2.7,
                                            color: Color.fromARGB(
                                                255, 225, 224, 220),
                                          ))),
                                  value: selecteditem,
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: TextStyle(fontSize: 23),
                                          )))
                                      .toList(),
                                  onChanged: (item) => setState(
                                      () => selecteditem = item as String?),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
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
                          color: Color.fromARGB(255, 255, 252, 251),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width - 32,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: deviceHeight(context) * .15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
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
                                padding: const EdgeInsets.only(top: 9),
                                child: Text('Dr. Armon',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style:
                                        Theme.of(context).textTheme.headline5),
                              ),
                              const Text(
                                'pallu doc',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Container(
                                height: 23,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13, vertical: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color.fromARGB(255, 210, 227, 211)),
                                child: const Text(
                                  'Available',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 252, 251),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 120,
                    width: MediaQuery.of(context).size.width - 32,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: deviceHeight(context) * .15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
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
                              padding: const EdgeInsets.only(top: 9),
                              child: Text('Dr. Armon',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.headline5),
                            ),
                            const Text(
                              'pallu doc',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 23,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 210, 227, 211)),
                              child: const Text(
                                'Available',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 16, top: 25, left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 252, 251),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 120,
                    width: MediaQuery.of(context).size.width - 32,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: deviceHeight(context) * .15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
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
                              padding: const EdgeInsets.only(top: 9),
                              child: Text('Dr. Armon',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.headline5),
                            ),
                            const Text(
                              'pallu doc',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 23,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 210, 227, 211)),
                              child: const Text(
                                'Available',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 14, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 252, 251),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 120,
                    width: MediaQuery.of(context).size.width - 32,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: deviceHeight(context) * .15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
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
                              padding: const EdgeInsets.only(top: 9),
                              child: Text('Dr. Armon',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.headline5),
                            ),
                            const Text(
                              'pallu doc',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 23,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color.fromARGB(255, 210, 227, 211)),
                              child: const Text(
                                'Available',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        //recommendation(
                        // name: "pina Caldera Residence",
                        // location: "Oia Santorini,Greece",
                        // image: "assets/hotels/recom1.png"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded,
                  color: Colors.black38, size: 25),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border_rounded,
                  color: Colors.black38, size: 30),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,
                  color: Colors.black38, size: 30),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromRGBO(3, 100, 176, 65),
        ));
  }
}
