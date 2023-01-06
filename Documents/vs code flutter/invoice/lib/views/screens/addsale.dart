import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:invoice/models/Globals.dart';

class addsale extends StatefulWidget {
  const addsale({super.key});

  @override
  State<addsale> createState() => _addsaleState();
}

class _addsaleState extends State<addsale> {
  String? date;
  int? invoice;
  String? qua;
  int? price;
  int? tax;
  var total;
  String? cname;
  DateTime now = DateTime.now();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController datecontroller =
      TextEditingController(text: Globals.date);
  TextEditingController invoicecontroller = TextEditingController();
  TextEditingController cnamecontroller = TextEditingController();
  TextEditingController quantitycontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController taxcontroller = TextEditingController();
  TextEditingController totalcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Sale"),
      ),
      body: Center(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              // Container(
              //   child: Text("${now.day}/${now.month}/${now.year}"),
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              height: 50,
                              width: 240,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 00, 30, 0),
                                child: TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  textInputAction: TextInputAction.next,
                                  controller: datecontroller,
                                  cursorColor: Colors.red,
                                  cursorRadius: Radius.circular(10),
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.date = val;
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
                                          DateFormat("dd-MM-yyyy")
                                              .format(k!)
                                              .toLowerCase();
                                    });
                                  },
                                  // validator: (val) {
                                  //   if (Globals.date!.isEmpty) {
                                  //     return "Enter Date";
                                  //   }
                                  // },
                                  decoration: InputDecoration(
                                    hintText: "Date",
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey[500]),
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
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Invoice Number",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              height: 50,
                              width: 140,
                              child: TextFormField(
                                // textInputAction: TextInputAction.next,
                                controller: invoicecontroller,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please Enter Degree ";
                                  }
                                },
                                onSaved: (val) {
                                  setState(() {
                                    invoice = int.parse(val!);
                                    Globals.akash.add(invoice);
                                  });
                                },

                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.blue.shade900,
                                cursorRadius: Radius.circular(10),
                                decoration: InputDecoration(
                                    hintText: "Invoice Number",
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey[500]),
                                    prefixIcon: Icon(
                                      CupertinoIcons.doc_chart_fill,
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
                      ],
                    ),
                  ],
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
                      "Customer Name",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 00, 30, 25),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (Globals.CustomerName.isEmpty) {
                            return " Please Enter name";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            Globals.CustomerName != val;
                          });
                        },
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
                          hintStyle: TextStyle(
                              fontSize: 17, color: Colors.indigo[500]),
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
                        validator: (value) {
                          if (Globals.CustomerPhone.isEmpty) {
                            return "Please Enter Mobile Number";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            Globals.CustomerPhone != val;
                          });
                        },
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
                          hintText: "Customer Phonenumber",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: TextStyle(
                              fontSize: 17, color: Colors.indigo[500]),
                          prefixIcon: Icon(
                            Icons.phone,
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
                        validator: (value) {
                          if (Globals.itemname.isEmpty) {
                            return "Please Enter Mobile Number";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            Globals.itemname != val;
                          });
                        },
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
                          hintStyle: TextStyle(
                              fontSize: 17, color: Colors.indigo[500]),
                          prefixIcon: Icon(
                            Icons.shopping_bag,
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
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 25),
                                child: TextFormField(
                                  // textInputAction: TextInputAction.next,
                                  controller: quantitycontroller,
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.quantity = int.parse(val!);
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
                                          fontSize: 17,
                                          color: Colors.grey[500]),
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
                                "Price",
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 25),
                                child: TextFormField(
                                  // textInputAction: TextInputAction.next,
                                  controller: pricecontroller,
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.price = int.parse(val!);
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
                                          fontSize: 17,
                                          color: Colors.grey[500]),
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
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 25),
                                child: TextFormField(
                                  // textInputAction: TextInputAction.next,
                                  controller: taxcontroller,
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.tax = int.parse(val!);
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
                                          fontSize: 17,
                                          color: Colors.grey[500]),
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
                                padding:
                                    const EdgeInsets.fromLTRB(30, 0, 30, 25),
                                child: TextFormField(
                                  // textInputAction: TextInputAction.next,
                                  controller: totalcontroller,
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.total = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your total";
                                    }
                                  },
                                  style: TextStyle(color: Colors.black),
                                  cursorColor: Colors.blue.shade900,
                                  cursorRadius: Radius.circular(10),
                                  decoration: InputDecoration(
                                      hintText: "Total",
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey[500]),
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
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (globalKey.currentState!.validate()) {
                                  globalKey.currentState!.save();
                                  Navigator.pop(context);
                                  // print(Globals.itemname);
                                  // print(Globals.itemstock);
                                }
                              });
                            },
                            child: Text("Save")),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
