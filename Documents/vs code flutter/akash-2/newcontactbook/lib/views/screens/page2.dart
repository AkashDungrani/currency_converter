import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newcontactbook/models/globals.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  GlobalKey<FormState> contackKey = GlobalKey<FormState>();
  final TextEditingController fnamecontrollar = TextEditingController();

  final TextEditingController lnamecontrollar = TextEditingController();
  final TextEditingController phonecontrollar = TextEditingController();
  final TextEditingController mailcontroller = TextEditingController();
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? email;
  File? image;

  @override
  Widget build(BuildContext context) {
    dynamic Edit = ModalRoute.of(context)!.settings.arguments;
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    fnamecontrollar.text = Edit.firstname;
    lnamecontrollar.text = Edit.lastname;
    phonecontrollar.text = Edit.phonenumber;
    mailcontroller.text = Edit.email;
    return Scaffold(
      backgroundColor: Globals.isdark?Colors.black:Colors.grey,
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
            "Edit",
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
            IconButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                Diary d1 = Diary(
                    firstname: firstname,
                    lastname: lastname,
                    phonenumber: phonenumber,
                    email: email,
                    image: image);
                setState(() {
                  Globals.akash.add(d1);
                  // Globals.image = null;
                });
                Navigator.pushNamedAndRemoveUntil(
                    context, 'homepage', (route) => false);
              }
            },
            icon: Icon(
              Icons.check,
              color: Globals.isdark ? Colors.white : Colors.black,
              size: 30,
            ),
          ),
          ],
        ),
     body: Form(
        key: contackKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "First Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Globals.isdark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  // textInputAction: TextInputAction.next,
                  controller: fnamecontrollar,
                  onSaved: (val) {
                    setState(() {
                      firstname = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your First name";
                    }
                  },
                  cursorColor: Colors.blue.shade900,
                  cursorRadius: Radius.circular(10),
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
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Globals.isdark?Colors.blue.shade900:Colors.black,),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                        // borderSide: BorderSide(color: Colors.yellowAccent),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Last Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Globals.isdark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  // textInputAction: TextInputAction.next,
                  controller: lnamecontrollar,
                  onSaved: (val) {
                    setState(() {
                      lastname = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your last name";
                    }
                  },
                  cursorColor: Colors.blue.shade900,
                  cursorRadius: Radius.circular(10),
                  decoration: InputDecoration(
                      hintText: "Last Name",
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle:
                          TextStyle(fontSize: 17, color: Colors.grey[500]),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        size: 30,
                        color: Colors.blue.shade900,
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Globals.isdark?Colors.blue.shade900:Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                        // borderSide: BorderSide(color: Colors.yellowAccent),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Globals.isdark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: phonecontrollar,
                  onSaved: (val) {
                    setState(() {
                      phonenumber = val;
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
                      hintStyle:
                          TextStyle(fontSize: 17, color: Colors.grey[500]),
                      prefixIcon: Icon(
                        Icons.call_outlined,
                        color: Colors.blue.shade900,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Globals.isdark?Colors.blue.shade900:Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Globals.isdark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: mailcontroller,
                  onSaved: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your email";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blue.shade900,
                  cursorRadius: Radius.circular(10),
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(fontSize: 17, color: Colors.grey[500]),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.blue.shade900,
                      size: 30,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Globals.isdark?Colors.blue.shade900:Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
