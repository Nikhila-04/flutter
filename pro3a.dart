import 'package:flutter/material.dart';

class ResponsiveHomePage extends StatelessWidget { 
  const ResponsiveHomePage({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Responsive UI')), 
      body: LayoutBuilder( 
        builder: (BuildContext context, BoxConstraints constraints) { 
          if (constraints.maxWidth >= 600) { 
            return _buildWideContainers(); // For Wide Screen (Tablet/Desktop) 
          } else { 
            return _buildNarrowContainers(); // For Narrow Screen (Phone) 
          } 
        }, 
      ), 
    ); 
  } 
 
  Widget _buildWideContainers() { 
    return Container( 
      color: Colors.blue, 
      child: const Center( 
        child: Text( 
          'You are using a Wide screen!', 
          style: TextStyle( 
            fontSize: 26, 
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
          ), 
        ), 
      ), 
    ); 
  } 
 
  Widget _buildNarrowContainers() { 
    return Container( 
      color: Colors.green, 
      child: const Center( 
        child: Text( 
          'You are using a Narrow screen!', 
          style: TextStyle(fontSize: 16, color: Colors.white), 
        ), 
      ), 
    ); 
  } 
}