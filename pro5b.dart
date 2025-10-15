import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App'),),
      body: Center(
        child: Consumer<CounterModel>(
          builder:(context,CounterModel,child){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('you have pushed the button this many times : '),
                Text(
                  '${CounterModel.Counter}',style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<CounterModel>(context,listen: false).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}