import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:practice/hepler/apihelper.dart';
import 'package:practice/models/currency.dart';

import 'models/globals.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CurrencyConverter(),
  ));
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController amountcontroller = TextEditingController();
  String? countrydata;
  late Future<Currency?> getdata;
  String from = "USD";
  String to = "inr";
  int amount = 1;
  String? currency;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata = Apihelper.apihelper.fetchData(from: "USD", to: "inr", amount: 1);
    amountcontroller.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
        actions: [
          Switch(
              value: Globals.isios,
              onChanged: (val) {
                setState(() {
                  Globals.isios = val;
                });
              })
        ],
      ),
      body: FutureBuilder(
        future: getdata,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("Error:${snapshot.error}");
          } else if (snapshot.hasData) {
            Currency? data = snapshot.data;
            int amount1 = int.parse(amountcontroller.text);

            if (data != null) {
              return Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Column(
                    children: [
                      (Globals.isios ==false )
                          ? SizedBox(
                              height: 100,
                            )
                          : SizedBox(
                              height: 1,
                            ),
                      (Globals.isios == false)
                          ? DropdownButtonFormField(
                              hint: Text("Select Country From"),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: Colors.grey.withOpacity(0.50),
                                  filled: true),
                              value: from,
                              iconSize: 20,
                              iconDisabledColor: Colors.deepPurple,
                              iconEnabledColor: Colors.deepPurple.shade400,
                              icon: Icon(Icons.arrow_drop_down_circle),
                              isExpanded: true,
                              dropdownColor: Colors.amber.shade300,
                              items: item
                                  .map((e) => DropdownMenuItem(
                                        child: Text(e["Country"]),
                                        value: "${e["from"]}",
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  // getdata = Apihelper.apihelper.fetchData(from: from);
                                  // print(from);
                                  // print(getdata)
                                  from = val.toString();
                                  print(from);
                                });
                              },
                            )
                          : GestureDetector(
                              onTap: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: CupertinoPicker(
                                            backgroundColor: Colors.white,
                                            itemExtent: 30,
                                            children: item.map((e) {
                                              return Text(
                                                e["from"],
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              );
                                            }).toList(),
                                            onSelectedItemChanged: (value) {
                                              setState(() {
                                                int i = value;
                                                from = item[i]["from"]
                                                    .toString();
                                                print(from);
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Container(
                                height:
                                  50,
                                width: MediaQuery.of(context).size.width ,
                                decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20,),
                                    Text(
                                      "$from".toString(),
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                                    ),
                                Spacer(),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      SizedBox(
                        height: 30,
                      ),
                      (Globals.isios==false)
                      ?DropdownButtonFormField(
                        hint: Text("Select Country"),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.grey.withOpacity(0.50),
                            filled: true),
                        value: to,
                        iconSize: 20,
                        iconDisabledColor: Colors.deepPurple,
                        iconEnabledColor: Colors.deepPurple.shade400,
                        icon: Icon(Icons.arrow_drop_down_circle),
                        isExpanded: true,
                        dropdownColor: Colors.amber.shade300,
                        items: item
                            .map((e) => DropdownMenuItem(
                                  child: Text(e["Country"]),
                                  value: "${e["to"]}",
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            // getdata = Apihelper.apihelper.fetchData(to: to);
                            // print(to);
                            to = val.toString();
                            print(to);
                          });
                        },
                      )
                      : GestureDetector(
                              onTap: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: CupertinoPicker(
                                            backgroundColor: Colors.white,
                                            itemExtent: 30,
                                            children: item.map((e) {
                                              return Text(
                                                e["to"],
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              );
                                            }).toList(),
                                            onSelectedItemChanged: (value) {
                                              setState(() {
                                                int i = value;
                                                to = item[i]["to"]
                                                    .toString();
                                                print(to);
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade100),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "$to".toString(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Amount ";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            amount = int.parse(val!);
                          });
                        },
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        controller: amountcontroller,
                        decoration: InputDecoration(
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          hintText: "Enter Amount",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          filled: true,
                          fillColor: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            getdata = Apihelper.apihelper
                                .fetchData(from: from, to: to, amount: amount1);
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.arrow_downward_sharp,
                        size: 30,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$amount1",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Text(
                              "${data.from}",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${data.result}",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "${data.to}",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          )),

                      // Text("${data.value}".split(".")[0]),
                      // Text("${data.code}"),
                    ],
                  ));
            } else {
              Text("No Data Found!!!");
            }
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
