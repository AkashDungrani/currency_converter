import 'package:flutter/material.dart';
import 'package:travelapp/views/scrrens/Em.dart';
import 'package:travelapp/views/scrrens/check.dart';
import 'package:travelapp/views/scrrens/europe.dart';
import 'package:travelapp/views/scrrens/flight.dart';
import 'package:travelapp/views/scrrens/mountain.dart';
void main() {
  runApp(MaterialApp(
    home: Travel(),
    initialRoute: 'homepage',
    routes: {
      'homepage': (context) => const Travel(),
      'mountain': (context) => const mountain(),
      'Europe': (context) => const europe(),
      'Em': (context) => const Em(),
      'flight': (context) => const flight(),
      'check': (context) => const check(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sky View",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 10, color: Colors.deepPurple.shade100)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Choose & Discover",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Family Safari Vacation To The Home Of The Gods",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "Travel Health Useful Medical Information",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "For Good Health Be",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'mountain');
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 2, bottom: 2, right: 20, left: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey.shade300)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.asset("assets/images/s1.jpeg"),
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "MOUNTAIN",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.redAccent),
                      ),
                      Text(
                        "How Great Is The",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "Strength Of Your Belief",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 2, bottom: 2),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(
                  "assets/images/s2.jpeg",
                  height: 150,
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "LANDSCAPE",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                    Text(
                      "Always Lokk On The",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      "Bright Side Of Life",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 2, bottom: 2),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.network(
                  "https://i.discogs.com/jkXNw2VUxKDTl4tsyKRnQjHVwLscKibPAUZ1hNM_LwU/rs:fill/g:sm/q:40/h:100/w:100/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTA0/MDEtMTUyNDk2MDE1/Ni0zMDA1LmpwZWc.jpeg",
                  height: 150,
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "CITY",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),
                    ),
                    Text(
                      "Life Advice Lokking",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      "Through A Window",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 2, bottom: 2),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.network(
                  "https://png.pngtree.com/png-vector/20190802/ourlarge/pngtree-boat-ship-indian-country-abstract-flat-color-icon-template-png-image_1646645.jpg",
                  height: 150,
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "SEA",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.lime.shade900),
                    ),
                    Text(
                      "Five Tips For Low Cost",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      "Holidays",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 2, bottom: 2),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.grey.shade300)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.network(
                  "https://rukminim1.flixcart.com/image/416/416/khdqnbk0/painting/m/r/e/unique-di-1-6-canvas-frame-dwellsindia-original-imafxevhnsgwts6x.jpeg?q=70",
                  height: 150,
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "CULTURE",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber),
                    ),
                    Text(
                      "Get Ready Fast For Fall",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      "Leaf Viewing Trips",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                )
              ]),
            ),
          ),
          // TextField(),
        ],
      ),
    );
  }
}
