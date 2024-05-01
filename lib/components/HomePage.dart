import 'package:flutter/material.dart';
import 'package:qr_code_scanner/providers/ScanQR.dart';
import 'package:qr_code_scanner/providers/GenQR.dart';

class HomePage extends StatefulWidget
{
  const HomePage({Key?key}): super(key:key);

  @override 
  _HomePageState createState()=> _HomePageState();

}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: 
        AppBar(title:Text("QR Code Scanner")),
        backgroundColor: Colors.green,
      body: 
        Center( 
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                ElevatedButton(onPressed: (){
                  setState((){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQR()));
                  });

                }, 
                  child: Text("Scan QR Code")),
                SizedBox(height:40),
                ElevatedButton(onPressed:(){

                  setState((){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenQR()));
                  });
                }, 
                  child: Text('Generate QR Code')
                )
              ]
            )
        )
    );
  }
}