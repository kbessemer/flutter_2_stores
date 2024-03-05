import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upwork_alex/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppData1()),
        ChangeNotifierProvider(create: (context) => AppData2()),
        // Add more providers as needed
      ],
      child: MaterialApp(
        title: '2 Store Counter',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterPage(title: '2 Store Counter'),
      ),
    );
  }
}

class AppData1 extends ChangeNotifier {
  int counter1 = 0;

  void changeCounter1(int x) {
    counter1 = x;
    notifyListeners();
  }
}

class AppData2 extends ChangeNotifier {
  int counter2 = 0;

  void changeCounter2(int x) {
    counter2 = x;
    notifyListeners();
  }
}