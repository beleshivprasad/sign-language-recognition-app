import 'package:flutter/material.dart';

class signRecognitionPage extends StatefulWidget {
  @override
  _signRecognitionPageState createState() => _signRecognitionPageState();
}

class _signRecognitionPageState extends State<signRecognitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.lightGreen.shade100,
            ],
          )),
          child: Center(child: Text("Start Recongtion"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.camera_alt_outlined),
        backgroundColor: Colors.green,
      ),
    );
  }
}
