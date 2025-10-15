import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Pro6aApp extends StatelessWidget {
  const Pro6aApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom button widget'),),
        body: Center(
          child: CustomButton(
            text: 'Click Me',
            icon: Icons.circle_outlined,
            Color: Colors.lightBlue[600],
            OnPressed:()
            {
              if(kDebugMode)
              {
                print('Button Pressed!');
              }
            },
          ),
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget
{
  final String text;
  final IconData icon;
  final VoidCallback OnPressed;
  final Color? color,textColor;
  const CustomButton({super.key,
    required this.text,
    required this.icon,
    required this.OnPressed,
    this.color=Colors.white, Color? Color, this.textColor,
  });
  @override
  Widget build(BuildContext context) 
  {
    return ElevatedButton.icon(
      onPressed: OnPressed,
      icon: Icon(icon,color: textColor,),
      label: Text(text,style: TextStyle(color: textColor),),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.0)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
      ),
    );  
  }
}