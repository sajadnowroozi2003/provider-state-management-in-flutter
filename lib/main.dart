import 'package:flutter/material.dart';
import 'package:provider_in_flutter/Providers/counter.provider.dart';
import 'package:provider_in_flutter/views/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => CounterProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Default Light Theme
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
