import 'package:flutter/material.dart';


class pro4bApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>const HomeScreen(),
        '/second':(context)=>const SecondScreen(),
         '/third':(context)=>const ThirdScreen(),
         '/fourth':(context)=>const FourthScreen(), 
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go To Third screen'),
            ),

            const SizedBox(height: 32,),

            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go back'),
            ),
          ],
        )
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/fourth');
              },
              child: const Text('Go To fourth screen'),
            ),

            const SizedBox(height: 32,),

            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go back'),
            ),
          ],
        )
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Final Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go Back'),
            ),

            const SizedBox(height: 32,),

            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to Home Screen'),
            ),
          ],
        )
      ),
    );
  }
}












