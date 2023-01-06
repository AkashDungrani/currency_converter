import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../../models/Globals.dart';

class addpurchase extends StatefulWidget {
  const addpurchase({super.key});

  @override
  State<addpurchase> createState() => _addpurchaseState();
}

class _addpurchaseState extends State<addpurchase> {
  String? date;
  String? qua;
  int? price;
  int? tax;
  int? total;
  DateTime now = DateTime.now();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController quantitycontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController taxcontroller = TextEditingController();
  TextEditingController totalcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Purchase"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Date",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 00, 30, 0),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                textInputAction: TextInputAction.next,
                controller: datecontroller,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(10),
                onSaved: (val) {
                  setState(() {
                    date = val;
                  });
                },
                onTap: () async {
                  DateTime? k = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );
                  setState(() {
                    datecontroller.text =
                        DateFormat("dd-MM-yyyy").format(k!).toLowerCase();
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Date";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Date",
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(fontSize: 17, color: Colors.grey[500]),
                  prefixIcon: Icon(
                    CupertinoIcons.calendar,
                    size: 30,
                    color: Colors.blue.shade900,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Dealer Name",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 00, 30, 25),
                    child: DropdownButtonFormField(
                      items: Globals.CustomerName.map(
                        (e) => DropdownMenuItem(
                          child: Text(
                            e,
                            style: TextStyle(color: Colors.black),
                          ),
                          value: e,
                        ),
                      ).toList(),
                      onChanged: (value) {},
                      dropdownColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: "Customer Name",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.indigo[500]),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Colors.blue.shade900,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "PhoneNumber",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                    child: DropdownButtonFormField(
                      items: Globals.CustomerPhone.map(
                        (e) => DropdownMenuItem(
                          child: Text(
                            e,
                            style: TextStyle(color: Colors.black),
                          ),
                          value: e,
                        ),
                      ).toList(),
                      onChanged: (value) {},
                      dropdownColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: "Dealer Phonenumber",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.indigo[500]),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Colors.blue.shade900,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "ItemName",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                    child: DropdownButtonFormField(
                      items: Globals.itemname
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(
                                e,
                                style: TextStyle(color: Colors.black),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {},
                      dropdownColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: "Item Name",
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.indigo[500]),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Colors.blue.shade900,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 110,
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Quantity",
                              style:
                                  TextStyle(fontSize: 20, ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                              child: TextFormField(
                                // textInputAction: TextInputAction.next,
                                controller: quantitycontroller,
                                onSaved: (val) {
                                  setState(() {
                                    qua = val;
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Quantity";
                                  }
                                },
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.blue.shade900,
                                cursorRadius: Radius.circular(10),
                                decoration: InputDecoration(
                                  hintText: "Quantity",
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.grey[500]),
                                  prefixIcon: Icon(
                                    Icons.shopping_bag_rounded,
                                    size: 30,
                                    color: Colors.blue.shade900,
                                  ),
                                  // enabled: true,
                                  // enabledBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                    // borderSide: BorderSide(color: Colors.yellowAccent),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 210,
                        child: Column(
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                              child: TextFormField(
                                // textInputAction: TextInputAction.next,
                                controller: pricecontroller,
                                onSaved: (val) {
                                  setState(() {
                                    price != val;
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return " Please EnterPrice Per Item";
                                  }
                                },
                                 style: TextStyle(color: Colors.black),
                                cursorColor: Colors.blue.shade900,
                                cursorRadius: Radius.circular(10),
                                decoration: InputDecoration(
                                    hintText: "Price Per Piece",
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey[500]),
                                    prefixIcon: Icon(
                                      Icons.currency_rupee_outlined,
                                      size: 30,
                                      color: Colors.blue.shade900,
                                    ),
                                    // enabled: true,
                                    // enabledBorder: OutlineInputBorder(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                      // borderSide: BorderSide(color: Colors.yellowAccent),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 110,
                        width: 200,
                        child: Column(
                          children: [
                            Text(
                              "Tax",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                              child: TextFormField(
                                // textInputAction: TextInputAction.next,
                                controller: taxcontroller,
                                onSaved: (val) {
                                  setState(() {
                                    tax != val;
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your Tax";
                                  }
                                },
                                 style: TextStyle(color: Colors.black),
                                cursorColor: Colors.blue.shade900,
                                cursorRadius: Radius.circular(10),
                                decoration: InputDecoration(
                                    hintText: "Tax",
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey[500]),
                                    prefixIcon: Icon(
                                      Icons.percent_outlined,
                                      size: 30,
                                      color: Colors.blue.shade900,
                                    ),
                                    // enabled: true,
                                    // enabledBorder: OutlineInputBorder(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                      // borderSide: BorderSide(color: Colors.yellowAccent),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 210,
                        child: Column(
                          children: [
                            Text(
                              " Total Amount",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                              child: TextFormField(
                                // textInputAction: TextInputAction.next,
                                controller: totalcontroller,
                                onSaved: (val) {
                                  setState(() {
                                    total != val;
                                  });
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your last name";
                                  }
                                },
                                 style: TextStyle(color: Colors.black),
                                cursorColor: Colors.blue.shade900,
                                cursorRadius: Radius.circular(10),
                                decoration: InputDecoration(
                                    hintText: "Last Name",
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey[500]),
                                    prefixIcon: Icon(
                                      Icons.calculate_rounded,
                                      size: 30,
                                      color: Colors.blue.shade900,
                                    ),
                                    // enabled: true,
                                    // enabledBorder: OutlineInputBorder(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none,
                                      // borderSide: BorderSide(color: Colors.yellowAccent),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(onPressed: () {}, child: Text("Cancel")),
                      ElevatedButton(onPressed: () {}, child: Text("Save")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
