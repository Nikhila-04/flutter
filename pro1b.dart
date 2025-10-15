import 'package:flutter/material.dart';

void main() {
  runApp(const pro1bApp());
}

class pro1bApp extends StatelessWidget {
  const pro1bApp({super.key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'First App Demo',
      home : Scaffold(
        appBar : AppBar(
          title : const Text("This is my First App"),
          backgroundColor: Colors.blue,
        ),
        body: const Center(child: Text ("Welcome to LBRCE"),),
      ), 
    );
  }
}

