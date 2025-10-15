import 'package:flutter/material.dart';
import 'package:myapp/pro9b.dart';

// import 'package:myapp/pro6b.dart';
// import 'package:myapp/welcome.dart';
// import 'package:myapp/login.dart';
// import 'package:myapp/signup.dart';

void main()
{
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationDemo(),
      // initialRoute: '/welcome',
      // routes: {
      //   '/welcome':(context)=>const WelcomeScreen(),
      //   '/login':(context)=>const LoginScreen(),
      //    '/signup':(context)=>const SignUpScreen(),
      // },
    );
  }
}