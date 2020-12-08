import 'package:flutter/material.dart';
import 'package:scan_app/generate.dart';
import 'package:scan_app/scan.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR CODE"),
        backgroundColor: Colors.purple[800],
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: NetworkImage("http://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            flatButton("SCAN QR CODE", Scan()),
            flatButton('Generate', Generate()),
            SizedBox(
              height: 10.0,
            ),

          ],
        ),
      ),
    );

  }
  Widget flatButton(String text, Widget widget)
  {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      child: Text(text),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Colors.purple[800],width: 3.0)
      ),
    );
  }
}
