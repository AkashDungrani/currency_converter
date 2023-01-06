import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invoice Generator"),
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
              accountName: Text("Akash Enterprise"),
              accountEmail: Text("akashdungrani170@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:AssetImage("assets/images/ae.png"),
                maxRadius: 300,
              ),
            ),
            Column(
              children: [
                Container(
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
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                Container(
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
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                Container(
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
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                Container(
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
                Divider(
                  thickness: 1,
                  height: 2,
                  color: Colors.grey.shade400,
                ),
                Container(
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
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: (Globals.akash.isEmpty)
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.87,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                      child: Image(image: AssetImage("assets/images/inv.png")),
                    ),
                    Text(
                      "You have no Invoice yet",
                      style: TextStyle(
                          color:
                              Globals.isdark ? Colors.white : Colors.black,
                          fontSize: 20),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: Globals.akash.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    
                  );
                },
              ),
      ),
      // backgroundColor: Colors.red,
      floatingActionButton:  FloatingActionButton(onPressed: () {
              Navigator.pushNamed(context, "contact");
            },
            child: Icon(Icons.add),),
    );
  }
}
