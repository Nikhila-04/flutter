import 'package:flutter/material.dart';

void main()
{
  runApp(pro2aApp());

}

class pro2aApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.asset('flutter.png')
          ],
        ),
       
      ),
    );
  }
}