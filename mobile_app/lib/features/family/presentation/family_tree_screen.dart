import 'package:flutter/material.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Family Tree')),
      body: const Center(
        child: Text('Interactive family tree placeholder'),
      ),
    );
  }
}
