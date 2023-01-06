import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class europe extends StatefulWidget {
  const europe({super.key});

  @override
  State<europe> createState() => _europeState();
}

class _europeState extends State<europe> {
  List<Map<String, dynamic>> akash = [
    {
      'name': "MatterHorn",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGhre5xo91AUhQ6Cz3zWo86C3Uf3kVQOM_yg&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
    {
      'name': "Montblack",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp6yqY9AAmX4_dJHJUOxxKaRM9XHn7N1p9g&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe."
    },
    {
      'name': "-Mont Bloc West",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtFLDhnhrjgK4wAZvqzEgFXu5erpRXR5phGIC5FHODWSeWIPHnk4Qma7qBEKxdGKih1nY&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
    {
      'name': "-Accension Du Mont",
      'image': Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Zk7vmWZaXr1b5M7O0R6Mq9k3arYMRgoAVZIiWNlUqGCfGJXLyPEhWjCU-PnPDMjAyzM&usqp=CAU",
        fit: BoxFit.cover,
      ),
      'details':
          "The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy. It is a large, near-symmetric pyramidal peak in the extended Monte Rosa area of the Pennine Alps, whose summit is 4,478 metres high, making it one of the highest summits in the Alps and Europe.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Europe"),
        bottomOpacity: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
                children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blueGrey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Mountain In \n     Europe",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Family safari Vacation To The Home Of The Gods",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 11, 232, 52)),
                      ),
                      Text(
                        "Travel Health Useful Medical Information",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(208, 0, 236, 24)),
                      ),
                      Text(
                        "For Good Health Be",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 11, 232, 52)),
                      )
                    ]),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/e1.jpeg'))),
              ),
              ...akash.map(
                (e) => Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'Em');
                            });
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.blue,
                              child: e['image']),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        e['name'],
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ].toList()),
          ),
        ),
      ),
    );
  }
}
