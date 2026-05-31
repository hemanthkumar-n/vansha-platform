import 'package:flutter/material.dart';

class FamilyUnitCard extends StatelessWidget {
  final String partner1;
  final String partner2;

  const FamilyUnitCard({
    super.key,
    required this.partner1,
    required this.partner2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            '$partner1 ❤️ $partner2',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
