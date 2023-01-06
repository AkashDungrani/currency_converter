import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice/models/Globals.dart';
import 'package:invoice/views/screens/item.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class saleview extends StatefulWidget {
  const saleview({super.key});

  @override
  State<saleview> createState() => _saleviewState();
}

class _saleviewState extends State<saleview> {
  final pdf = pw.Document();
  @override
  void initState() {
    super.initState();
    makepdf();
  }

  makepdf() {
    pdf.addPage(
      pw.Page(build: (pw.Context context1) => pw.Column(
          children: [
            ...Globals.akash
                .map((e) => pw.Container(
                      padding: pw.EdgeInsets.all(1),
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width,
                      color: PdfColors.blueGrey300,
                      child: pw.Column(
                        children: [
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Container(
                              alignment: pw.Alignment.center,
                              height: 50,
                              width: 200,
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueGrey.shade(300),
                                  borderRadius: pw.BorderRadius.circular(30)),
                              child: pw.Text(
                                  "Invoice Number:${Globals.akash.indexOf(e) + 1}")),
                          pw.SizedBox(
                            height: 20,
                          ),
                          pw.Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width,
                            color: PdfColors.blueGrey.shade(300),
                            child: pw.Column(
                              children: [
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Text(
                                  "Akash Enterprise",
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black),
                                ),
                                pw.Divider(color: PdfColors.indigo),
                                pw.Text(
                                  "GST NO. ARBPD1309F1ZM",
                                  style: pw.TextStyle(
                                      fontSize: 16,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black),
                                ),
                                pw.SizedBox(
                                  height: 1,
                                ),
                                pw.Text(
                                  "Address: Shop No. 3,4,Ground Floor,Plot No.27,Shaktikrupa Soc.,",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black),
                                ),
                                pw.Text(
                                  "Near Laxmi Hotel,Varachcha Road,Surat:395006 ",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black),
                                ),
                                pw.Divider(
                                  color: PdfColors.indigo,
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.SizedBox(
                                      width: 10,
                                    ),
                                    pw.Column(
                                      mainAxisAlignment:
                                          pw.MainAxisAlignment.spaceEvenly,
                                      children: [
                                        pw.Text(
                                          "Billed To:",
                                          style: pw.TextStyle(
                                              fontSize: 14,
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      width: 2,
                                    ),
                                    pw.Column(
                                      children: [
                                        pw.SizedBox(
                                          height: 10,
                                        ),
                                        pw.Text(
                                          "${Globals.CustomerName[Globals.akash.indexOf(e)]}",
                                          style: pw.TextStyle(
                                              fontSize: 14,
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Text(
                                          "Mobile no.:${Globals.CustomerPhone[Globals.akash.indexOf(e)]}",
                                          style: pw.TextStyle(
                                              fontSize: 14,
                                              // fontWeight: FontWeight.w00,
                                              color: PdfColors.black),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      width: 30,
                                    ),
                                    pw.Container(
                                      height: 60,
                                      width: 1,
                                      color: PdfColors.indigo.shade(300),
                                    ),
                                    pw.SizedBox(
                                      width: 20,
                                    ),
                                    pw.Text(
                                      "Invoice:",
                                      style: pw.TextStyle(
                                          fontSize: 14,
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.black),
                                    ),
                                    pw.SizedBox(
                                      width: 10,
                                    ),
                                    pw.Column(
                                      children: [
                                        pw.SizedBox(
                                          height: 10,
                                        ),
                                        pw.Text(
                                          "Number:${Globals.akash.indexOf(e) + 1}",
                                          style: pw.TextStyle(
                                              fontSize: 14,
                                              fontWeight: pw.FontWeight.bold,
                                              color: PdfColors.black),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Text(
                                          "Date:${Globals.date![Globals.akash.indexOf(e)]}",
                                          style: pw.TextStyle(
                                              fontSize: 14,
                                              // fontWeight: FontWeight.w00,
                                              color: PdfColors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Divider(color: Colors.indigo,),
                                pw.Container(
                                  alignment: pw.Alignment.topCenter,
                                  height: 300,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: pw.BoxDecoration(
                                      border: pw.Border.all(
                                          width: 1,
                                          color: PdfColors.indigo.shade(300))),
                                  child: pw.Column(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "no.",
                                            style: pw.TextStyle(
                                                fontSize: 16,
                                                // height: -10,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Container(
                                            height: 50,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "Items",
                                            style: pw.TextStyle(
                                                fontSize: 16,
                                                //  height: -10,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 90,
                                          ),
                                          pw.Container(
                                            height: 50,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "Qty",
                                            style: pw.TextStyle(
                                                fontSize: 16,
                                                // height: -10,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Container(
                                            height: 50,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "Rate",
                                            style: pw.TextStyle(
                                                fontSize: 16,
                                                // height: -10,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Container(
                                            height: 50,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "Tax",
                                            style: pw.TextStyle(
                                                // height: -10,
                                                fontSize: 16,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.SizedBox(
                                            width: 5,
                                          ),
                                          pw.Container(
                                            height: 50,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "Total",
                                            style: pw.TextStyle(
                                                // height: -10,
                                                fontSize: 16,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      pw.Container(
                                        height: 1,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: PdfColors.indigo.shade(300),
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.SizedBox(
                                            width: 18,
                                          ),
                                          pw.Text(
                                            "${Globals.akash.indexOf(e) + 1}",
                                            style: pw.TextStyle(
                                                fontSize: 14,
                                                height: -9,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 18,
                                          ),
                                          pw.Container(
                                            height: 247,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 12,
                                          ),
                                          pw.Text(
                                            "${Globals.itemname[Globals.akash.indexOf(e)]}",
                                            style: pw.TextStyle(
                                                fontSize: 14,
                                                height: -9,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 50,
                                          ),
                                          pw.Container(
                                            height: 247,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 20,
                                          ),
                                          pw.Text(
                                            "${Globals.quantity}",
                                            style: pw.TextStyle(
                                                fontSize: 14,
                                                height: -9,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 21,
                                          ),
                                          pw.Container(
                                            height: 247,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 9,
                                          ),
                                          pw.Text(
                                            "${Globals.price}",
                                            style: pw.TextStyle(
                                                fontSize: 14,
                                                height: -9,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 5,
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Container(
                                            height: 247,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "${Globals.tax}",
                                            style: pw.TextStyle(
                                                height: -9,
                                                fontSize: 14,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 20,
                                          ),
                                          pw.SizedBox(
                                            width: 5,
                                          ),
                                          pw.Container(
                                            height: 247,
                                            width: 1,
                                            color: PdfColors.indigo.shade(300),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                          pw.Text(
                                            "${Globals.total}",
                                            style: pw.TextStyle(
                                                height: -9,
                                                fontSize: 14,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black),
                                          ),
                                          pw.SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: pw.BoxDecoration(
                                      border: pw.Border.all(
                                          width: 1,
                                          color: PdfColors.indigo.shade(300))),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Grand Total:",
                                        style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                      pw.Text(
                                        "${Globals.total}",
                                        style: pw.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 16,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sale Invoice"),
        actions: [
          IconButton(
            icon: Icon(Icons.picture_as_pdf),
            onPressed: () async {
              Uint8List data = await pdf.save();
              await Printing.layoutPdf(onLayout: (format) => data);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ...Globals.akash
              .map((e) => Container(
                    padding: EdgeInsets.all(1),
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade300,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                                "Invoice Number:${Globals.akash.indexOf(e)+1}")),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueGrey.shade300,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Akash Enterprise",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Divider(color: Colors.indigo),
                              Text(
                                "GST NO. ARBPD1309F1ZM",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Address: Shop No. 3,4,Ground Floor,Plot No.27,Shaktikrupa Soc.,",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Text(
                                "Near Laxmi Hotel,Varachcha Road,Surat:395006, ",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Text(
                                "Gujarat",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Divider(
                                color: Colors.indigo,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Billed To:",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${Globals.CustomerName[Globals.akash.indexOf(e)]}",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Mobile no.:${Globals.CustomerPhone[Globals.akash.indexOf(e)]}",
                                        style: TextStyle(
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w00,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 60,
                                    width: 1,
                                    color: Colors.indigo.shade300,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Invoice:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Number:${Globals.akash.indexOf(e)+1}",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Date:${Globals.date![Globals.akash.indexOf(e)]}0/12/2022",
                                        style: TextStyle(
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w00,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Divider(color: Colors.indigo,),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.indigo.shade300)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "no.",
                                          style: TextStyle(
                                              fontSize: 16,
                                              // height: -10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Items",
                                          style: TextStyle(
                                              fontSize: 16,
                                              //  height: -10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 90,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Qty",
                                          style: TextStyle(
                                              fontSize: 16,
                                              // height: -10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Rate",
                                          style: TextStyle(
                                              fontSize: 16,
                                              // height: -10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Tax",
                                          style: TextStyle(
                                              // height: -10,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 50,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Total",
                                          style: TextStyle(
                                              // height: -10,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 1,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.indigo.shade300,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Text(
                                          "${Globals.akash.indexOf(e)+1}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              height: -9,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Container(
                                          height: 247,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "${Globals.itemname[Globals.akash.indexOf(e)]}",
                                          style: TextStyle(
                                              fontSize: 14,
                                               height: -9,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 68,
                                        ),
                                        Container(
                                          height: 247,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "${Globals.quantity}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              height: -9,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 21,
                                        ),
                                        Container(
                                          height: 247,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "${Globals.price}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              height: -9,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 247,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${Globals.tax}",
                                          style: TextStyle(
                                              height: -9,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 247,
                                          width: 1,
                                          color: Colors.indigo.shade300,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                         "${Globals.total}",
                                          style: TextStyle(
                                              height: -9,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                               Container(
                                 height: 50,
                                 width: MediaQuery.of(context).size.width,
                                 decoration: BoxDecoration(border:Border.all(width: 1,color: Colors.indigo.shade300) ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Grand Total:",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                      "${Globals.total}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                              ),
                               )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
