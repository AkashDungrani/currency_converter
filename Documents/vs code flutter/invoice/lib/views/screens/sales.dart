import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice/models/Globals.dart';

class sale extends StatefulWidget {
  const sale({super.key});

  @override
  State<sale> createState() => _saleState();
}

class _saleState extends State<sale> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  void initState() {
    // TODO: implement initState
    setState(() {});
    Globals.akash;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text("sales Name"),
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
          ...Globals.akash
              .map((e) => Card(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'saleview');
                      },
                      child: ListTile(
                        leading: Text(
                          "${Globals.akash.indexOf(e) + 1}",
                          style: TextStyle(
                            height: 2,
                          ),
                        ),
                        title: Text(
                            "${Globals.CustomerName[Globals.akash.indexOf(e)]}"),
                        subtitle: Text("${Globals.total}"),
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
                                          Globals.akash.remove(e);
                                          Globals.akash.remove(e);
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              'sale',
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
                                  'sale', (route) => false);
                            },
                            child: Icon(CupertinoIcons.delete)),
                      ),
                    ),
                  ))
              .toList(),
        ],
      ),
      // body: Text("${Globals.total}"),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, 'addsale');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
