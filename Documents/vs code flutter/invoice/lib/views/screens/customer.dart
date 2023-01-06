import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';

class customer extends StatefulWidget {
  const customer({super.key});

  @override
  State<customer> createState() => _customerState();
}

class _customerState extends State<customer> {
  void initState() {
    // TODO: implement initState
    setState(() {});
    Globals.CustomerName;
    Globals.CustomerPhone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    @override
    int a = Globals.CustomerName.length;
    return Scaffold(
      appBar: AppBar(
        title: Text("Customers Name"),
      ),
      body: 
      Globals.CustomerName.isEmpty
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.87,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Image(image: AssetImage("assets/images/cus.png")),
                  ),
                  Text(
                    "You have no  Contact  yet",
                    style: TextStyle(
                        color: Globals.isdark ? Colors.white : Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
            )
          : ListView(
              // physics: const BouncingScrollPhysics(),
              children: [
                ...Globals.CustomerName.map((e) => Card(
                      child: ListTile(
                        leading: Text(
                          "${Globals.CustomerName.indexOf(e) + 1}",
                          style: TextStyle(
                            height: 2,
                          ),
                        ),
                        title: Text(
                            "${Globals.CustomerName[Globals.CustomerName.indexOf(e)]}"),
                        subtitle: Text(
                            "${Globals.CustomerPhone[Globals.CustomerName.indexOf(e)]}"),
                        trailing: GestureDetector(
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: const Text(
                                        "Are you sure for delete contact?"),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text("No"),
                                        onPressed: () {
                                          Navigator.of(dialogContext).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: const Text("Yes"),
                                        onPressed: () {
                                          Globals.CustomerName.remove(e);
                                          Globals.CustomerPhone.remove(e);
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              'customer',
                                              (route) => false);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                              // Globals.CustomerName.remove(e);
                              // Globals.CustomerPhone.remove(e);

                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  'customer', (route) => false);
                            },
                            child: Icon(CupertinoIcons.delete)),
                      ),
                    )).toList(),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, 'contact');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
