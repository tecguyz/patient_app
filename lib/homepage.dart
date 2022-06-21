import 'package:flutter/material.dart';




class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static const Color primary = Color.fromARGB(255, 46, 89, 233);
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  List items = [
    'Eriyad',
    'Edavilangu',
  ];
  String? selecteditem = 'Eriyad';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, ///// it will create a spawce betwween them
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.05,
                    right: deviceWidth(context) * 0.21,
                  ),
                  child: const Text(
                    'Hlo,david',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: deviceWidth(context) * 0.3,
                  ),
                  child: TextButton.icon(
                    onPressed: null,
                    style: TextButton.styleFrom(
                        // backgroundColor: Color.fromARGB(255, 242, 229, 188),
                        textStyle: const TextStyle(
                            fontSize: 15, fontStyle: FontStyle.italic)),
                    icon: const Icon(Icons.room_rounded),
                    label: const Text('Eriyad'),
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
              child: CircleAvatar(
                radius: 25.0,
                child: ClipRRect(
                  child: Image.asset('images/front.jpg'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: deviceHeight(context) * 0.01,
                  top: deviceHeight(context) * 0.03,
                  left: deviceHeight(context) * 0.01),
              child: const Text(
                'Make an Apponitment',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0, color: primary),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: deviceHeight(context) * 0.03),
              child: Expanded(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            width: 2.7,
                            color: Color.fromARGB(255, 225, 224, 220),
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
                  onChanged: (item) =>
                      setState(() => selecteditem = item as String?),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}