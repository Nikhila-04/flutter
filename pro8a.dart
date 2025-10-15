import 'dart:math';

import 'package:flutter/material.dart';
class ListviewScreen1 extends StatefulWidget 
{
    const ListviewScreen1({super.key});
    @override
    _ListviewState createState() => _ListviewState();
}
class _ListviewState extends State<ListviewScreen1> 
{
  final Random _random = Random();
  //Function to generate random colors
  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1.0,
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: ListView(
      scrollDirection: Axis.vertical,
      children: [
       Container(
        height: 100,
        color: _getRandomColor(),
        child: const Center(child: Text('Item 1')),
      ),
      Container(
        height: 100,
        color: _getRandomColor(),
        child: const Center(child: Text('Item 2')),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Item 3')),
      ),

      Container(
        height: 100,
        color: Colors.yellow,
        child: const Center(child: Text('Item 4')),
      ),
      Container(
        height: 100,
        color: Colors.green,
        child: const Center(child: Text('Item 2')),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Item 3')),
      ),
      Container(
        height: 100,
        color: Colors.yellow,
        child: const Center(child: Text('Item 4')),
      ),
      Container(
        height: 100,
        color: Colors.green,
        child: const Center(child: Text('Item 2')),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Item 3')),
      ),
      Container(
        height: 100,
        color: Colors.yellow,
        child: const Center(child: Text('Item 4')),
      ),
      Container(
        height: 100,
        color: Colors.green,
        child: const Center(child: Text('Item 2')),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Item 3')),
      ),
      Container(
        height: 100,
        color: Colors.yellow,
        child: const Center(child: Text('Item 4')),
      ),
    ],
  ),);
  }
}