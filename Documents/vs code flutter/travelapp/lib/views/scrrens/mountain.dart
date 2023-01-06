import 'package:flutter/material.dart';


class mountain extends StatefulWidget {
  const mountain({super.key});

  @override
  State<mountain> createState() => _mountainState();
}

class _mountainState extends State<mountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOUNTAIN"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Stack(children: [
                Container(
                  alignment: Alignment(0, 0),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1589802829985-817e51171b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80"),
                ),
                Container(
                  alignment: Alignment(0, 0.8),
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Mountain in \n       world",
                    style: TextStyle(
                        color: Color(0xff7DE5ED),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue.shade100,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "In Europe",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(context, 'Europe');
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "All",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              )
                            ]),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    // alignment: Alignment(-0.8,0.6),
                                    height: 230,
                                    width: 300,
                                    // color: Colors.blue,
                                    child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGhre5xo91AUhQ6Cz3zWo86C3Uf3kVQOM_yg&usqp=CAU"),
                                  ),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-MatterHorn",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    // alignment: Alignment(-0.8,0.6),
                                    height: 230,
                                    width: 300,
                                    // color: Colors.blue,
                                    child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdp6yqY9AAmX4_dJHJUOxxKaRM9XHn7N1p9g&usqp=CAU"),
                                  ),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "- MontBlack",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "10Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    // alignment: Alignment(-0.8,0.6),
                                    height: 230,
                                    width: 300,
                                    // color: Colors.blue,
                                    child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtFLDhnhrjgK4wAZvqzEgFXu5erpRXR5phGIC5FHODWSeWIPHnk4Qma7qBEKxdGKih1nY&usqp=CAU"),
                                  ),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Mont Bloc West",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "15 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    // alignment: Alignment(-0.8,0.6),
                                    height: 230,
                                    width: 300,
                                    // color: Colors.blue,
                                    child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Zk7vmWZaXr1b5M7O0R6Mq9k3arYMRgoAVZIiWNlUqGCfGJXLyPEhWjCU-PnPDMjAyzM&usqp=CAU"),
                                  ),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Accension Du Mont",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "18 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue.shade100,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "In Asia",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 215,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )
                            ]),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/e1.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Mount Everest",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "21 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    // alignment: Alignment(-0.8,0.6),
                                    height: 230,
                                    width: 300,
                                    // color: Colors.blue,
                                    child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4xhFPwhNgOyIKeSnjPtQo4kF2aMciNUbU5id8HSIKg7Pq4UYmPIJdu6LR6FtOVOsHTvk&usqp=CAU"),
                                  ),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "K2",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "10Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/m1.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Kanchenjunga",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "15 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/M7.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Parbat",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "18 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue.shade100,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "In Australia",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )
                            ]),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/m3.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Kosciuszko",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "21 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/m4.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Townsend",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "10Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/m5.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Twynam",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "15 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                      // alignment: Alignment(-0.8,0.6),
                                      height: 230,
                                      width: 300,
                                      // color: Colors.blue,
                                      child:
                                          Image.asset("assets/images/m6.jpeg")),
                                  // SizedBox(height: 5,width: 5,),
                                  Container(
                                      alignment: Alignment(-0.8, 0.1),
                                      height: 230,
                                      width: 300,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "-Alice Rawson Peak",
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          // Text(
                                          //   "18 Places to vist",
                                          //   style: TextStyle(
                                          //       color: Colors.pink,
                                          //       fontSize: 10),
                                          // ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
