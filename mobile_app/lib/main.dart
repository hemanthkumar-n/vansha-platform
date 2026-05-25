import 'package:flutter/material.dart';

void main() {
  runApp(const VanshaApp());
}

class VanshaApp extends StatelessWidget {
  const VanshaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vansha',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Vansha')),
        body: const Center(
          child: Text('Vansha foundation initialized'),
        ),
      ),
    );
  }
}
