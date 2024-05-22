// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetScreen(),
    );
  }
}

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  _WidgetScreenState createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState() wurde aufgerufen.');
  }

  @override
  void dispose() {
    print('dispose() wurde aufgerufen.');
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Zahl: $_counter',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: _incrementCounter,
              child: const Text('Klick mich!'),
            ),
            OutlinedButton(
              onPressed: dispose,
              child: const Text('Beenden'),
            ),
          ],
        ),
      ),
    );
  }
}
