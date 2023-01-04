import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    changescreen();
  }

  changescreen() {
    // Timer.periodic(Duration(seconds: 3), (timer) {
    //   Navigator.pushReplacementNamed(context, 'home');
    // });
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('homepage');
    });
  }

  @override
  void dispose() {
    super.dispose();
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(gradient:LinearGradient(colors: [Color(0xff105170),Color(0xff7ba237),Color(0xff89376D)],begin: Alignment.topLeft,end: Alignment.bottomLeft) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                 Image.asset("assets/images/contacts.png"),
                // Container(
                //   height: MediaQuery.of(context).size.height/2,
                //   width: MediaQuery.of(context).size.width*0.8,
                //    decoration: BoxDecoration(
                     
                //    ),
                // ),
                CircularProgressIndicator(
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 20,),
                Text("ContactBook",style:GoogleFonts.aleo(fontSize: 30)),
                Text("Powered By Sky",style:GoogleFonts.aleo(fontSize: 20))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
