import 'package:flutter/material.dart';

void main() {
  runApp(const pro2bApp());
}

class pro2bApp extends StatelessWidget {
  @override
  const pro2bApp({super.key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title : Text("This app we are printing container in row and column wise"),
          backgroundColor: Colors.blue,
        ),
        body: LayoutApp(),
      ), 
    );
  }
}
class LayoutApp extends StatelessWidget
{
  @override
  Widget build(BuildContext Context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text('I am in a column and centered.The below is a row!'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            for(var color in [Colors.red,Colors.green,Colors.blue])
            Container(width:100,height:100,color:color),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width:300,height:200,color:Colors.yellow),
          Text(
            'Stacked on yellow Box',
            style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

