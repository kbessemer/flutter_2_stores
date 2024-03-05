import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  void _incrementCounter1() {
    var current = Provider.of<AppData1>(context, listen: false).counter1;

    Provider.of<AppData1>(context, listen: false).changeCounter1(current+1);
  }

  void _incrementCounter2() {
    var current = Provider.of<AppData2>(context, listen: false).counter2;

    Provider.of<AppData2>(context, listen: false).changeCounter2(current+1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button 1 this many times:',
            ),
            Text(
              Provider.of<AppData1>(context, listen: true).counter1.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'You have pushed the button 2 this many times:',
            ),
            Text(
              Provider.of<AppData2>(context, listen: true).counter2.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: _incrementCounter1, child: Text("1")),
                  ElevatedButton(onPressed: _incrementCounter2, child: Text("2")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}