import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('welcome page')
      ),
      body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: Colors.grey[200],
            child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    SizedBox(
      width: 150,
      height: 150,
      child: Image.asset(
        'lbrce.jpg',
        fit: BoxFit.contain,
      ),
    ),
    SizedBox(height: 20),
    Text(
      'Hello Flutter!',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 20),
    ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/login");
      },
      child: Text('Login'),
    ),
    SizedBox(height: 20),
    ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/signup");
      },
      child: Text('Signup'),
    ),
  ],
),

          ),
        ),
      
    );
  }
}