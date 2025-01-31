import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<HomePage> {
  int _number = 0 ;
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
                onPressed: (){
                  setState(() {
                    _number ++;
                  });

              },child: Icon(Icons.add),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: const Text('increment the numbre', style: TextStyle(fontSize: 20)),
            ),
            Text('$_number',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
