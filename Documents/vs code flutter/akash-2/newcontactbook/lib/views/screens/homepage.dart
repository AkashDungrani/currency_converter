// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newcontactbook/models/globals.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  makecall({required phonenumber}) async {
    final Uri call = Uri(scheme: "tel", path: '+91$phonenumber');
    await launchUrl(call);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globals.isdark ? Colors.black : Colors.grey,
      appBar: AppBar(
        backgroundColor: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
        title: Text(
          "Contacts",
          style: GoogleFonts.caramel(
              textStyle: TextStyle(
                  color: Globals.isdark ? Colors.white : Colors.black,
                  fontSize: 35)),
        ),
        actions: [
          Switch(value: Globals.isdark,
          activeColor: Colors.black, onChanged: (val){
            setState(() {
              Globals.isdark=val;
            });
          }),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: "set",
                child: Text("Settings"),
              ),
              PopupMenuItem(
                value: "spam",
                child: Text("Spam"),
              ),
              PopupMenuItem(
                value: "cm",
                child: Text("Contact Manager"),
              ),
              PopupMenuItem(
                value: "clear",
                child: Text("Clear Call History"),
              ),
            ],
          ),
        ],
      ),
      body: (Globals.akash.isEmpty)
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color:Globals.isdark?Colors.black:Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(155, 155, 155, 10),
                    child: Globals.isdark?Image.asset("assets/images/cb.png",color: Colors.white,):Image.asset("assets/images/cb.png")
                  ),
                  Text(
                    "You have no contacts yet",
                    style: TextStyle(color: Globals.isdark?Colors.white:Colors.black, fontSize: 20),
                  ),
                ],
              ),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),

              itemCount: Globals.akash.length,
              itemBuilder: (context, i) {
                return ListTile(
                  
                  onTap: () {
                    makecall(phonenumber: Globals.akash[i].phonenumber);
                  },
                  leading: CircleAvatar(
                    backgroundImage: (Globals.image != null)
                        ? FileImage(Globals.image as File)
                        : null
                  ),
                  title: Text(
                    "${Globals.akash[i].firstname} ${Globals.akash[i].lastname}",
                    style: TextStyle(
                        color: Globals.isdark ? Colors.white : Colors.black),
                  ),
                  subtitle: Text(
                    "+91 ${Globals.akash[i].phonenumber} ",
                    style: TextStyle(
                        color: Globals.isdark ? Colors.white : Colors.black),
                  ),
                  trailing: IconButton(
                    color: (Globals.isdark)

                         ?Colors.blue.shade900
                         :Colors.deepOrange,
                    onPressed: () {
                      Navigator.of(context).pushNamed('page3',arguments: Globals.akash[i]);
                    },
                    icon: const Icon(
                      CupertinoIcons.info,
                      // color:(Globals.isdark)?Colors.deepOrange:Colors.blue.shade900 ,
                      size: 32,
                    ),
                    // color: Globals.isdark
                    //     ? Colors.teal.shade300
                    //     : Colors.lightBlue,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Globals.isdark? Colors.blue.shade900 :Colors.amber,
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, "page1");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
