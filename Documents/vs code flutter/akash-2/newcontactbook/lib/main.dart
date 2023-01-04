// import 'dart:collection';

import 'package:google_fonts/google_fonts.dart';
import 'package:newcontactbook/views/screens/homepage.dart';
import 'package:newcontactbook/views/screens/page1.dart';
import 'package:newcontactbook/views/screens/page2.dart';
import 'package:newcontactbook/views/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:newcontactbook/views/screens/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newcontactbook/models/globals.dart';

void main() {
  runApp(
    Contactbook(),
  );
}

class Contactbook extends StatefulWidget {
  const Contactbook({super.key});

  @override
  State<Contactbook> createState() => _ContactbookState();
}

class _ContactbookState extends State<Contactbook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "homepage",
      routes: {
        '/':(context) => splash(),
        'homepage': (context) => homepage(),
        'page1': (context) => addpage(),
        'page2': (context) => page2(),
        'page3': (context) => page3(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // brightness: Brightness.dark,
          fontFamily:'aladin',
          primarySwatch: Colors.red,
          buttonTheme: ButtonThemeData(
            buttonColor: Globals.isdark?Colors.grey:Colors.black),
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(width: 2, color: Colors.grey),
              ),
              textStyle: MaterialStatePropertyAll(TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: Colors.black, secondary: Colors.amber)),
    );
  }
}
