import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenQR extends StatefulWidget 
{
  const GenQR({super.key});

  @override
  _GenQRState createState() => _GenQRState();
}

class _GenQRState extends State<GenQR> 
{
  TextEditingController urlController =TextEditingController();
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: 
        AppBar
        ( 
          title:Text("Generate QR Code")
        ),
      body: 
        Center
        ( 
          child:
            SingleChildScrollView
            ( 
              child: 
                Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [ 
                    if(urlController.text.isNotEmpty)
                      // QrImage(data: urlController.text,size:200,),
                      SizedBox(height:10,),
                      Container( 
                        padding:EdgeInsets.only(left:10,right:10),
                        child: TextField( 
                          controller: urlController,
                          decoration: InputDecoration( 
                            hintText:'Enter your data',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                          )
                        )
                      ),
                      SizedBox(height:10),
                      ElevatedButton(onPressed: (){},child:Text('Generate QR Code'))
                  ],
                )
            )
        ),
    );
  }
}