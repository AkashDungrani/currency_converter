import 'dart:ffi';
import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newcontactbook/views/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:newcontactbook/models/globals.dart';
import 'package:flutter/cupertino.dart';

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  // List<Map<String, dynamic>> akash = [];
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  File? img;
  // ImagePicker pick = ImagePicker();
  String? first;
  String? last;
  String? contact;
  String? mail;
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController num = TextEditingController();
  TextEditingController Email = TextEditingController();

  getimagefromgallery() async {
    ImagePicker pick = ImagePicker();
    XFile? xfile = await pick.pickImage(source: ImageSource.gallery);
    if (xfile != null) {
      Globals.image = File(xfile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Globals.isdark ? Colors.black : Colors.grey,
        appBar: AppBar(
          backgroundColor: Globals.isdark ? Colors.blue.shade900 : Colors.amber,
          title: Text(
            "Add Contact",
            style: GoogleFonts.caramel(
                textStyle: TextStyle(
              color: Globals.isdark ? Colors.white : Colors.black,
              fontSize: 35,
            )),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 30,
            ),
            color: Globals.isdark ? Colors.white : Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
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
                      firstname: first,
                      lastname: last,
                      phonenumber: contact,
                      email: mail,
                      image: img);
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
          key: formkey,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment(1, 0.8),
                  children: [
                    
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Globals.isdark?Colors.grey.shade400: Colors.orange.shade200,
                      backgroundImage: (Globals.image != null)
                          ? FileImage(Globals.image!)
                          : null,
                    ),
                    FloatingActionButton(
                      backgroundColor: Globals.isdark? Colors.blue.shade900
                          :Colors.amber,
                      onPressed: () {
                        setState(() {
                          getimagefromgallery();
                        });
                      },
                      mini: true,
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
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
                        "FirstName",
                        style: GoogleFonts.caramel(
                            textStyle: TextStyle(
                              // fontFamily: 'aladin',
                                color: Globals.isdark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 00, 30, 25),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: fname,
                          cursorColor: Colors.red,
                          cursorRadius: Radius.circular(10),
                          onSaved: (val) {
                            setState(() {
                              first = val;
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
                            hintStyle: TextStyle(
                                fontSize: 17, color: Colors.grey[500]),
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
                        "LastName",
                        style: GoogleFonts.caramel(
                            textStyle: TextStyle(
                                color: Globals.isdark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                        child: TextFormField(
                          // textInputAction: TextInputAction.next,
                          controller: lname,
                          onSaved: (val) {
                            setState(() {
                              last = val;
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
                              hintStyle: TextStyle(
                                  fontSize: 17, color: Colors.grey[500]),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                size: 30,
                                color: Colors.blue.shade900,
                              ),
                              // enabled: true,
                              // enabledBorder: OutlineInputBorder(),
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
                      ),
                      Text(
                        "PhoneNumber",
                        style: GoogleFonts.caramel(
                            textStyle: TextStyle(
                                color: Globals.isdark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: num,
                          onSaved: (val) {
                            setState(() {
                              contact = val;
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
                      Text(
                        "Email",
                        style: GoogleFonts.caramel(
                            textStyle: TextStyle(
                                color: Globals.isdark
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: Email,
                          onSaved: (val) {
                            setState(() {
                              mail = val;
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
                            hintStyle: TextStyle(
                                fontSize: 17, color: Colors.grey[500]),
                            prefixIcon: Icon(
                              Icons.email_outlined,
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
                            ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, 'page2');
                      //     },
                      //     child: Text("Next"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
