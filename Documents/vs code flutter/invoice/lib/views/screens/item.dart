import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:invoice/models/Globals.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  void initState() {
    // TODO: implement initState
    setState(() {});
    Globals.itemname;
    Globals.itemstock;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int a = Globals.itemname.length;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text("Items Name"),
      ),
      body:
          // Globals.itemname.isEmpty
          //     ? Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.height * 0.87,
          //         color: Colors.grey,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
          //               child: Image(image: AssetImage("assets/images/item.jpeg")),
          //             ),
          //             Text(
          //               "You have no  Items  yet",
          //               style: TextStyle(
          //                   color: Globals.isdark ? Colors.white : Colors.black,
          //                   fontSize: 20),
          //             ),
          //           ],
          //         ),
          //       )
          // :
          ListView(
        // physics: const BouncingScrollPhysics(),
        children: [
          ...Globals.itemname
              .map((e) => Card(
                    child: ListTile(
                      leading: Text(
                        "${Globals.itemname.indexOf(e) + 1}",
                        style: TextStyle(
                          height: 2,
                        ),
                      ),
                      title: Text(
                          "${Globals.itemname[Globals.itemname.indexOf(e)]}"),
                      subtitle: Text(
                          "${Globals.itemstock[Globals.itemname.indexOf(e)]}"),
                      trailing: GestureDetector(
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (BuildContext dialogContext) {
                                return AlertDialog(
                                  title: const Text(
                                      "Are you sure for delete Item?"),
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
                                        Globals.itemname.remove(e);
                                        Globals.itemstock.remove(e);
                                        Navigator.pushNamedAndRemoveUntil(
                                            context, 'item', (route) => false);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                            // Globals.CustomerName.remove(e);
                            // Globals.CustomerPhone.remove(e);

                            Navigator.of(context).pushNamedAndRemoveUntil(
                                'item', (route) => false);
                          },
                          child: Icon(CupertinoIcons.delete)),
                    ),
                  ))
              .toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, 'additem');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
