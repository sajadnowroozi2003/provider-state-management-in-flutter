import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_in_flutter/Providers/counter.provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: const Text('increment the numbre',
                  style: TextStyle(fontSize: 20)),
            ),
            Text(
              '${context.watch<CounterProvider>().number}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: Icon(Icons.minimize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
