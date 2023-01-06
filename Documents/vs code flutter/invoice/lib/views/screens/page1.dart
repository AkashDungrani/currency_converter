import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';


class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String? first;
  String? contact;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController customernamecontroller = TextEditingController();
  TextEditingController num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Customer"),
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
                      "Customer Name",
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
                        controller: customernamecontroller,
                        cursorColor: Colors.red,
                        cursorRadius: Radius.circular(10),
                        onSaved: (val) {
                          setState(() {
                            first = val;
                            Globals.CustomerName.add(first);
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your first name";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "First Name",
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle:
                              TextStyle(fontSize: 17, color: Colors.grey[500]),
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
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Colors.black),
                        controller: num,
                        onSaved: (val) {
                          setState(() {
                            contact = val;
                            Globals.CustomerPhone.add(contact);
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your phone";
                          }
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.blue.shade900,
                        cursorRadius: Radius.circular(10),
                        decoration: InputDecoration(
                            hintText: "Phone number",
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                                fontSize: 17, color: Colors.grey[500]),
                            prefixIcon: Icon(
                              Icons.call_outlined,
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
                            // print(Globals.CustomerPhone);
                            // print(Globals.CustomerName);
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
