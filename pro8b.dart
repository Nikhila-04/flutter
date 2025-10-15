import 'package:flutter/material.dart';

class ListviewScreen2 extends StatefulWidget {
  const ListviewScreen2({super.key});

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<ListviewScreen2> {
  final states = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: ListView(
        children: List.generate(states.length, (index) {
          final data = states[index];
          return Container(
            margin: const EdgeInsets.all(10),
            child: Text("${index + 1} $data"),
          );
        }),
      ),
    );
  }
}
