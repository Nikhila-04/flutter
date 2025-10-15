import 'package:flutter/material.dart';

class Pro6b extends StatefulWidget {
  const Pro6b({super.key});

  @override
  State<Pro6b> createState() => _Pro6bState();
}

class _Pro6bState extends State<Pro6b> {
  bool isDarktheme=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarktheme?ThemeData.dark():ThemeData.light().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: Builder(
        builder: (BuildContext context)
        {
          return Scaffold(
            appBar: AppBar(
              title: Text(isDarktheme?'Dark Theme':'Light Theme'),
            ),
            body:Column(
              children:<Widget> [
                OutlinedButton.icon(
                  onPressed: (){},  
                  label: const Text('Button'),
                  icon: isDarktheme?const Icon(Icons.dark_mode_rounded):const Icon(Icons.light_mode_rounded),
                  ),
                  const SizedBox(height: 20),
                  SwitchListTile(
                    title: const Text('Dark Theme'),
                    value: isDarktheme,
                    onChanged: (value){
                      setState(() {
                        isDarktheme=value;
                      });
                    },
                  ),
              ],
            ),
          );
        },
        ),
    );
  }
}