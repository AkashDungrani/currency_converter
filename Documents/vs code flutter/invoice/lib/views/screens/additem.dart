import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';

class additem extends StatefulWidget {
  const additem({super.key});

  @override
  State<additem> createState() => _additemState();
}

class _additemState extends State<additem> {
  String? items;
  String? stock;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController itemcontroller = TextEditingController();
  TextEditingController stockcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              accountName: Text("Akash"),
              accountEmail: Text("akashdungrani170@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/ae.png"),
                maxRadius: 300,
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Container(
                    height: 50,
                    width: 304,
                    color: Colors.blueGrey,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.home,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'customer');
                  },
                  child: Container(
                    height: 50,
                    width: 304,
                    color: Colors.blueGrey,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.person,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Customer",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'sale');
                  },
                  child: Container(
                    height: 50,
                    width: 304,
                    color: Colors.blueGrey,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/images/saleicon.png",
                            ),
                            height: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Sales",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'purchase');
                  },
                  child: Container(
                    height: 50,
                    width: 304,
                    color: Colors.blueGrey,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Purchase",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'item');
                  },
                  child: Container(
                    height: 50,
                    width: 304,
                    color: Colors.blueGrey,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.shopping_basket_rounded,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Items",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
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
                      "Item Name",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 00, 30, 25),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        textInputAction: TextInputAction.next,
                        controller: itemcontroller,
                        cursorColor: Colors.red,
                        cursorRadius: Radius.circular(10),
                        onSaved: (val) {
                          setState(() {
                            items = val;
                            Globals.itemname.add(items);
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your Item name";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Item Name",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.grey[500]),
                          prefixIcon: Icon(
                            Icons.shopping_bag_rounded,
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
                      "Quantity",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Colors.black),
                        controller: stockcontroller,
                        onSaved: (val) {
                          setState(() {
                            stock = val;
                            Globals.itemstock.add(stock);
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Item Quantity";
                          }
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.blue.shade900,
                        cursorRadius: Radius.circular(10),
                        decoration: InputDecoration(
                            hintText: "Item Quantity",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 17, color: Colors.grey[500]),
                            prefixIcon: Icon(
                              CupertinoIcons.chart_bar_circle,
                              color: Colors.blue.shade900,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
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
                      child: Text("NEXT"),
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
