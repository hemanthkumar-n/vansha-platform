import 'package:flutter/material.dart';
import '../domain/graph_person.dart';

class PersonNode extends StatelessWidget {
  final GraphPerson person;
  final VoidCallback onTap;

  const PersonNode({super.key, required this.person, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: SizedBox(
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(radius: 24),
                const SizedBox(height: 8),
                Text(person.name, textAlign: TextAlign.center),
                if (person.knownAs != null)
                  Text('(${person.knownAs})', style: const TextStyle(fontSize: 11)),
                const SizedBox(height: 4),
                Text(person.relationship, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
