import 'package:travelapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  var dd;
  var mm;
  var yy;
  var id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Check Out",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          leading: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ))),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Departure & Return Flights",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ]),
                    Spacer(),
                    Text(
                      "Rs.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "9999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      ".99",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Contact Details",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text("_____",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 12,
                      fontWeight: FontWeight.w900)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email Address",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
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
                      labelStyle:
                          TextStyle(color: Colors.deepPurple, fontSize: 18),
                      hintText: 'ex=xyz123@gmailcom',
                      suffixText: "@gmail.com",
                      suffixStyle: TextStyle(color: Colors.grey.shade900),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.mail),
                      filled: true,
                      fillColor: Colors.deepPurple.shade100)),
              SizedBox(
                height: 15,
              ),
              Text("Mobile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 15,
              ),
              TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelStyle:
                          TextStyle(color: Colors.deepPurple, fontSize: 18),
                      hintText: '1234567890',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      suffixIcon: Icon(Icons.phone),
                      prefixText: "+91",
                      prefixStyle: TextStyle(color: Colors.grey.shade900),
                      // suffixIconColor: Colors.red,
                      filled: true,
                      fillColor: Colors.deepPurple.shade100)),
              SizedBox(
                height: 15,
              ),
              Text(
                "Traveler Details",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text("_____",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 12,
                      fontWeight: FontWeight.w900)),
              SizedBox(
                height: 15,
              ),
              Text("Date Of Birth",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(
                          width: 1,
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                        elevation: 0,
                        hint: Text(
                          "  DD ",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                        value: dd,
                        items: [
                          DropdownMenuItem(
                            value: '1',
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '2',
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '3',
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '4',
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '5',
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '6',
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '7',
                            child: Text(
                              "7",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '8',
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '9',
                            child: Text(
                              "9",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '10',
                            child: Text(
                              "10",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                        ],
                        iconSize: 20,
                        iconDisabledColor: Colors.deepPurple,
                        iconEnabledColor: Colors.deepPurple.shade400,
                        icon: Icon(Icons.arrow_drop_down_circle),
                        isExpanded: true,
                        dropdownColor: Colors.amber.shade300,
                        onChanged: (value) {
                          setState(() {
                            dd = value;
                          });
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(
                          width: 1,
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                        elevation: 0,
                        hint: Text(
                          "  MM ",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                        value: mm,
                        items: [
                          DropdownMenuItem(
                            value: '1',
                            child: Text(
                              "January",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '2',
                            child: Text(
                              "February",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '3',
                            child: Text(
                              "March",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '4',
                            child: Text(
                              "April",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '5',
                            child: Text(
                              "May",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '6',
                            child: Text(
                              "June",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '7',
                            child: Text(
                              "July",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '8',
                            child: Text(
                              "August",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '9',
                            child: Text(
                              "September",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '10',
                            child: Text(
                              "Octomber",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '11',
                            child: Text(
                              "November",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '12',
                            child: Text(
                              "December",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                        ],
                        iconSize: 20,
                        iconDisabledColor: Colors.deepPurple,
                        iconEnabledColor: Colors.deepPurple.shade400,
                        icon: Icon(Icons.arrow_drop_down_circle),
                        isExpanded: true,
                        dropdownColor: Colors.amber.shade300,
                        onChanged: (value) {
                          setState(() {
                            mm = value;
                          });
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(
                          width: 1,
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                        elevation: 0,
                        hint: Text(
                          "  YY ",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                        value: yy,
                        items: [
                          DropdownMenuItem(
                            value: '1',
                            child: Text(
                              "1990",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '2',
                            child: Text(
                              "1991",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '3',
                            child: Text(
                              "1992",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '4',
                            child: Text(
                              "1993",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '5',
                            child: Text(
                              "1994",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '6',
                            child: Text(
                              "1995",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '7',
                            child: Text(
                              "1996",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '8',
                            child: Text(
                              "1997",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '9',
                            child: Text(
                              "1998",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '10',
                            child: Text(
                              "1999",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '11',
                            child: Text(
                              "2000",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                          DropdownMenuItem(
                            value: '12',
                            child: Text(
                              "2001",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurple),
                            ),
                          ),
                        ],
                        iconSize: 20,
                        iconDisabledColor: Colors.deepPurple,
                        iconEnabledColor: Colors.deepPurple.shade400,
                        icon: Icon(Icons.arrow_drop_down_circle),
                        isExpanded: true,
                        dropdownColor: Colors.amber.shade300,
                        onChanged: (value) {
                          setState(() {
                            yy = value;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "ID Proof",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                      width: 1,
                      color: Colors.deepPurple,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton(
                    elevation: 0,
                    hint: Text(
                      "  Id Proof ",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                    value: id,
                    items: [
                      DropdownMenuItem(
                        value: '1',
                        child: Text(
                          "Aadhar Card",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text(
                          "Pan Card",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text(
                          "Driving Licence",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                      ),
                      DropdownMenuItem(
                        value: '4',
                        child: Text(
                          "Voter ID",
                          style:
                              TextStyle(fontSize: 20, color: Colors.deepPurple),
                        ),
                      ),
                    ],
                    iconSize: 30,
                    iconDisabledColor: Colors.deepPurple,
                    iconEnabledColor: Colors.deepPurple.shade400,
                    icon: Icon(Icons.arrow_drop_down_circle),
                    isExpanded: true,
                    dropdownColor: Colors.amber.shade300,
                    onChanged: (value) {
                      setState(() {
                        id = value;
                      });
                    }),
              ),
              Text(
                "ID Number",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
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
                      labelStyle:
                          TextStyle(color: Colors.deepPurple, fontSize: 18),
                      hintText: 'xxxxxxx',
                      // suffixText: "@gmail.com",
                      // suffixStyle: TextStyle(color: Colors.grey.shade900),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      // suffixIcon: Icon(Icons.numbers_rounded),
                      filled: true,
                      fillColor: Colors.deepPurple.shade100)),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    child: Text(
                      "Purchase",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
