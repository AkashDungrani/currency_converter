import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/painting/gradient.dart';

class flight extends StatefulWidget {
  const flight({super.key});

  @override
  State<flight> createState() => _flightState();
}

class _flightState extends State<flight> {
  String? drval;
  String? toval;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Search Flight",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        bottomOpacity: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Find Best Flight",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
          Text(
            "___",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "From",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple)),
            child: DropdownButton(
                elevation: 0,
                hint: Text(
                  "Select Country ",
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
                value: drval,
                items: [
                  DropdownMenuItem(
                    value: 'In',
                    child: Text(
                      "India",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Eu',
                    child: Text(
                      "Europe",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Au',
                    child: Text(
                      "Australia",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Wi',
                    child: Text(
                      "West Indies",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Uk',
                    child: Text(
                      "United Kingdom",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'CA',
                    child: Text(
                      "Canada",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Af',
                    child: Text(
                      "Africa",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Nz',
                    child: Text(
                      "Newzea Land",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                ],
                iconSize: 30,
                iconDisabledColor: Colors.deepPurple,
                iconEnabledColor: Colors.deepPurple,
                icon: Icon(Icons.border_color_rounded),
                isExpanded: true,
                dropdownColor: Colors.amber.shade300,
                onChanged: (val) {
                  setState(() {
                    drval = val!;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "To",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            // alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple)),
            child: DropdownButton(
                elevation: 0,
                hint: Text(
                  "Select Country ",
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
                value: toval,
                items: [
                  DropdownMenuItem(
                    value: 'In',
                    child: Text(
                      "India",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Eu',
                    child: Text(
                      "Europe",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Au',
                    child: Text(
                      "Australia",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Wi',
                    child: Text(
                      "West Indies",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Uk',
                    child: Text(
                      "United Kingdom",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'CA',
                    child: Text(
                      "Canada",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Af',
                    child: Text(
                      "Africa",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Nz',
                    child: Text(
                      "Newzea Land",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                ],
                iconSize: 30,
                iconDisabledColor: Colors.deepPurple,
                iconEnabledColor: Colors.deepPurple,
                icon: Icon(Icons.border_color_rounded),
                isExpanded: true,
                dropdownColor: Colors.amber.shade300,
                onChanged: (val) {
                  setState(() {
                    toval = val!;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.centerLeft,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Companies",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.deepPurple),
                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(
                    "assets/images/indigo.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.deepPurple),
                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(
                    "assets/images/qutar.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.deepPurple),
                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Emirates_logo.svg/1200px-Emirates_logo.svg.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.deepPurple),
                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTliD1Y6q2lha-l0mMLsm0mVbes-l4fU0ezyg&usqp=CAU",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.deepPurple),
                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(
                    "assets/images/spicejet.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 18),
                  label: Text("Depart On"),
                  hintText: '24,November,2022',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                  suffixIcon: Icon(Icons.date_range),
                  filled: true,
                  fillColor: Colors.deepPurple.shade100)),
          SizedBox(
            height: 20,
          ),
          Text(
            "Return On",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.deepPurple)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 18),
                  label: Text(
                    "Return On",
                    style: TextStyle(fontSize: 18),
                  ),
                  hintText: '25,November,2022',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                  suffixIcon: Icon(Icons.date_range),
                  // suffixIconColor: Colors.red,
                  filled: true,
                  fillColor: Colors.deepPurple.shade100)),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'check');
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    child: Text(
                      "Find More Deals",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(30),
                      gradient:
                          LinearGradient(begin: Alignment.centerLeft, colors: [
                        Colors.deepPurple,
                        Colors.blue,
                      ]),
                    ),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
