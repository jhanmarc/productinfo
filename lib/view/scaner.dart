import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'envase.dart';
import 'dart:async';

class ScanerPage extends StatefulWidget {
  @override
  _ScanerPageState createState() => _ScanerPageState();
}

class _ScanerPageState extends State<ScanerPage> {
  String result = "";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
        //print("pier se la come");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EnvasePage()));
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Permiso de la cámara fue denegado";
        });
      } else {
        setState(() {
          result = "Error desconocido $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "Presionaste el botón Atrás antes de escanear algo";
      });
    } catch (ex) {
      setState(() {
        result = "Error desconocido $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Product"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                result,
                style:
                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton.extended(
                      elevation: 10.0,
                      icon: Icon(Icons.camera_alt),
                      label: Text("Scan"),
                      onPressed: _scanQR,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
