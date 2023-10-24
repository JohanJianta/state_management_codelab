import 'package:flutter/material.dart';

void main() {
  // runApp(const MyStatelessApp());
  runApp(const MyStatefulWidgetApp());
}

class MyStatelessApp extends StatelessWidget {
  const MyStatelessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Counter App')),
        body: const CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Counter Value: $counter'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              counter++; // increment counter tanpa setState
              // nilai counter tetap bertambah, tetapi perubahan nilainya tdk ditampilkan di teks
              print(counter);
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidgetApp extends StatefulWidget {
  const MyStatefulWidgetApp({super.key});

  @override
  _MyStatefulWidgetAppState createState() => _MyStatefulWidgetAppState();
}

class _MyStatefulWidgetAppState extends State<MyStatefulWidgetApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++; // tambah nilai counter tiap setState dipanggil
      print(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Counter Value: $counter'),
              const SizedBox(height: 10),
              ElevatedButton(
                // panggil setState tiap tombol ditekan agar tampilan counter ikut berubah
                onPressed: incrementCounter,
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
