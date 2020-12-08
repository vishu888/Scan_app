import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String qrRresult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
        backgroundColor: Colors.purple[800],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Result',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrRresult,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20.0,
            ),
        FlatButton(
          padding: EdgeInsets.all(15.0),
          child: Text('Scan'),
          onPressed: ()async{
            String scanning = await BarcodeScanner.scan();
            setState(() {
              qrRresult = scanning;
            });
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.purple[800],width: 3.0)
          ),
        ),
          ],
        ),
      ),
    );
  }
}
