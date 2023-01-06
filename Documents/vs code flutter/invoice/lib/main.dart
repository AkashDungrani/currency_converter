import 'package:flutter/material.dart';
import 'package:invoice/views/screens/additem.dart';
import 'package:invoice/views/screens/addpurchase.dart';
import 'package:invoice/views/screens/addsale.dart';
import 'package:invoice/views/screens/customer.dart';
import 'package:invoice/views/screens/homepage.dart';
import 'package:invoice/views/screens/item.dart';
import 'package:invoice/views/screens/page1.dart';
import 'package:invoice/views/screens/purchase.dart';
import 'package:invoice/views/screens/sales.dart';
import 'package:invoice/views/screens/saleview.dart';

void main() {
  runApp(Invoice(),);
}
class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homepage(),
        'contact':(context) => Page1(),
        'item': (context) => Item(),
        'additem': (context) => additem(),
        'addsale': (context) => addsale(),
        'sale': (context) => sale(),
        'purchase': (context) => purchase(),
        'addpurchase': (context) => addpurchase(),
        'customer': (context) => customer(),
        'saleview':(context) => saleview(),
      },
      theme: ThemeData.dark(),
    
    );
  }
}