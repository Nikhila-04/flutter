import 'package:flutter/material.dart';

class Pro9a extends StatefulWidget {
  @override
  _Pro9aState createState() => _Pro9aState();
}

class _Pro9aState extends State<Pro9a> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Beginner Animation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tap the box to animate',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isBig = !_isBig;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOutBack,
                  width: _isBig ? 250 : 100,
                  height: _isBig ? 500 : 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        _isBig ? Colors.deepPurpleAccent : Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Box',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 