import 'package:flutter/material.dart';

class ResponsiveHomePage extends StatefulWidget {
  const ResponsiveHomePage({super.key});

  @override
  State<ResponsiveHomePage> createState() => _ResponsiveHomePageState();
}

class _ResponsiveHomePageState extends State<ResponsiveHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive UI'),),
      body: LayoutBuilder(builder :(BuildContext context,BoxConstraints constraints)
      {
        if(constraints.maxWidth>=600)
        {
          return _buildLargeScreenlayout();
        }
        else
        {
          return _buildSmallScreenlayout();
        }
      } ,
     ),
    );
  }

  Widget _buildLargeScreenlayout() {
     return Row(
      children: <Widget>[
        Expanded(
          child:Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'left container\n(wide screen)',
                 style: TextStyle(color: Colors.white,fontSize: 24),
              ),
            ),
          ),
        ),
        Expanded(
          child:Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Right container\n(wide screen)',
                 style: TextStyle(color: Colors.white,fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    );

  }

  Widget _buildSmallScreenlayout() {
     return Column(
      children: <Widget>[
        Expanded(
          child:Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Top container\n(Narrow screen)',
                 style: TextStyle(color: Colors.white,fontSize: 24),
              ),
            ),
          ),
        ),
         Expanded(
          child:Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'bottom container\n(Narrow screen)',
                 style: TextStyle(color: Colors.white,fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}