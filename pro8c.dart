import 'dart:math';
import 'package:flutter/material.dart';

class ListviewScreen3 extends StatefulWidget {
  const ListviewScreen3({super.key});

  @override
  _ListviewScreen3State createState() => _ListviewScreen3State();
}

class _ListviewScreen3State extends State<ListviewScreen3> {
  final List<String> states = [
    "Repalle",
    "siddinayunipalli",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    
  ];

  final Random _random = Random();

  // Function to generate random colors
  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indian States'),
      ),
      body: ListView.separated(
        itemCount: states.length,
        separatorBuilder: (context, index) => Container(
          height: 10,
          decoration: BoxDecoration(
            color: _getRandomColor(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        itemBuilder: (context, index) {
          final data = states[index];
          return InkWell(
            onTap: () {
              print("Tapped on $data");
              showTheAlertDialog(context, data);
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: _getRandomColor(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  data,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void showTheAlertDialog(BuildContext context, String data) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: Text("You tapped on $data"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
