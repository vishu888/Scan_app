import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {

  String qrData = "https://github.com/neon97";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate"),
        backgroundColor: Colors.purple[800],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QrImage(data: qrData),
            SizedBox(height: 10.0,),
            Text('Get Your Data/link to the qr code'),
            TextField(
              controller: qrText,
              decoration: InputDecoration(
                hintText: "Enter the data/link",
              ),
            ),
        SizedBox(height: 10.0,),
        FlatButton(
          padding: EdgeInsets.all(15.0),
          child: Text("Generate Qr Code"),
          onPressed: (){
            if(qrText.text.isEmpty){
              setState(() {
                qrData = "https://flutter.dev";
              });

            }else{
              setState(() {
                qrData = qrText.text;
              });

            }
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
  final qrText = TextEditingController();
}