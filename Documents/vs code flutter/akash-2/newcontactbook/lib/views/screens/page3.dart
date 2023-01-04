import 'package:flutter/src/widgets/container.dart';
import 'dart:io';
import 'package:newcontactbook/models/globals.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:share_plus/share_plus.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    dynamic A = ModalRoute.of(context)!.settings.arguments;
    makecall() async {
      final Uri call = Uri(
        scheme: 'tel',
        path: '+91${A.phonenumber}',
      );
      await launchUrl(call);
    }

    directcall() async {
      String number = '+91${A.phonenumber}';
      bool? result = await FlutterPhoneDirectCaller.callNumber(number);
    }

    makesms() async {
      final Uri sms = Uri(
        scheme: 'sms',
        path: '+91${A.phonenumber}',
      );
      await launchUrl(sms);
    }

    makemail() async {
      final Uri email = Uri(scheme: 'mailto', path: '${A.email}');
      await launchUrl(email);
    }

    return Scaffold(
        backgroundColor: Globals.isdark ? Colors.black : Colors.grey,
        appBar: AppBar(
          backgroundColor: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
          leading: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Globals.isdark ? Colors.white : Colors.black,
              )),
          title: Text(
            "Contacts Details",
            style: GoogleFonts.caramel(
                textStyle: TextStyle(
                    color: Globals.isdark ? Colors.white : Colors.black,
                    fontSize: 35)),
          ),
          actions: [
            Switch(
                value: Globals.isdark,
                activeColor: Colors.black,
                onChanged: (val) {
                  setState(() {
                    Globals.isdark = val;
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
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext dialogContext) {
                          return AlertDialog(
                            title:
                                const Text("Are you sure for delete contact?"),
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
                                  Globals.akash.remove(A);
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, 'homepage', (route) => false);
                                },
                              ),
                            ],
                          );
                        },
                      );
                      Globals.akash.remove(A);

                      Navigator.of(context).pushNamedAndRemoveUntil(
                          'homepage', (route) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      // width: MediaQuery.of(context).size.width / 3,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Globals.isdark ? Colors.white : Colors.black,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('page2', arguments: A);
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.all(10),
                      // width: MediaQuery.of(context).size.width / 3,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Globals.isdark ? Colors.white : Colors.black,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                  radius: 80,
                  backgroundImage: (Globals.image != null)
                      ? FileImage(Globals.image as File)
                      : null),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.all(00),
                child: Text(
                  "${A.firstname} ${A.lastname}",
                  style: TextStyle(
                      color: Globals.isdark ? Colors.white : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.all(5),
                child: Text(
                  "${A.phonenumber}",
                  style: TextStyle(
                      color: Globals.isdark ? Colors.white : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${A.email} ",
                  style: TextStyle(
                      color: Globals.isdark ? Colors.white : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                // width: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.green),
                      child: IconButton(
                          onPressed: () {
                            makecall();
                          },
                          icon: Icon(Icons.call),
                          color: Globals.isdark ? Colors.white : Colors.black),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.orange),
                      child: IconButton(
                          onPressed: () {
                            makesms();
                          },
                          icon: Icon(Icons.sms),
                          color: Globals.isdark ? Colors.white : Colors.black),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.redAccent),
                      child: IconButton(
                          onPressed: () {
                            makemail();
                          },
                          icon: Icon(Icons.mail),
                          color: Globals.isdark ? Colors.white : Colors.black),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.lightBlue),
                      child: IconButton(
                          onPressed: () async {
                            await Share.share(
                                "Name:${A.firstname} ${A.lastname}\n+91 ${A.phonenumber}");
                          },
                          icon: Icon(Icons.share),
                          color: Globals.isdark ? Colors.white : Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
