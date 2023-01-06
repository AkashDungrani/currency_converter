import 'package:travelapp/models/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Em extends StatefulWidget {
  const Em({super.key});

  @override
  State<Em> createState() => _EmState();
}

class _EmState extends State<Em> {
  List<Map<String, dynamic>> emo = [
    {
      'name': "MatterHorn",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGhre5xo91AUhQ6Cz3zWo86C3Uf3kVQOM_yg&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "      The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
    {
      'name': "Montblack",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp6yqY9AAmX4_dJHJUOxxKaRM9XHn7N1p9g&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "       The Montblack is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe."
    },
    {
      'name': "Mont Bloc West",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtFLDhnhrjgK4wAZvqzEgFXu5erpRXR5phGIC5FHODWSeWIPHnk4Qma7qBEKxdGKih1nY&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "       The Mont Bloc West is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
    {
      'name': "Accension Du Mont",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Zk7vmWZaXr1b5M7O0R6Mq9k3arYMRgoAVZIiWNlUqGCfGJXLyPEhWjCU-PnPDMjAyzM&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "         The Accension Du Mont is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>>val =
    //     ModalRoute.of(context)!.settings.arguments as List<Map<String, dynamic>>;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Europe Mountain ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...emo
                  .map((e) => Column(
                        children: [
                          Text(
                            e['name'],
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                                fontStyle: FontStyle.italic),
                          ),
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: e['image'],
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        //  color: Colors.blueGrey,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Family safari Vacation To The Home Of The Gods",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 228, 8, 8)),
                                              ),
                                              Text(
                                                "Travel Health Useful Medical Information",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 228, 8, 8)),
                                              ),
                                              Text(
                                                "For Good Health Be",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color.fromARGB(
                                                        255, 228, 8, 8)),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              )
                                            ]),

                                        // decoration: BoxDecoration(
                                        //     image: DecorationImage(
                                        //         image: NetworkImage(
                                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp6yqY9AAmX4_dJHJUOxxKaRM9XHn7N1p9g&usqp=CAU",
                                        //     // fit: BoxFit.cover,

                                        //   ),
                                        //         )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            Navigator.pushNamed(
                                                context, 'flight');
                                          });
                                        },
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 2),
                                              color: Colors.grey),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.add_location_outlined,
                                                size: 40,
                                              ),
                                              Text(
                                                "Set \nLocation",
                                                style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 100,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 2),
                                            color: Colors.grey),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.thumb_up_off_alt,
                                              size: 40,
                                            ),
                                            Text(
                                              "Add To \nFavourite",
                                              style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue.shade300),
                            child: Text(
                              e['details'],
                              style: TextStyle(fontSize: 25),
                            ),
                          )
                        ],
                      ))
                  .toList(),
            ],
          ),
        ));
  }
}
