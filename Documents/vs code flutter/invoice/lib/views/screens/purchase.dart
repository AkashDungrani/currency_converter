import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';

class purchase extends StatefulWidget {
  const purchase({super.key});

  @override
  State<purchase> createState() => _purchaseState();
}

class _purchaseState extends State<purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purchase"),
      ),
      body: Column(
          children: [
            Globals.akash.isEmpty
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.87,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                          child:
                              Image(image: AssetImage("assets/images/s.jpeg")),
                        ),
                        Text(
                          "You have no  Sale Invoice yet",
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
                      return ListTile();
                    },
                  ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'addpurchase');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}