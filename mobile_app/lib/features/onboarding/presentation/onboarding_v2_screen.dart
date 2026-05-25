import 'package:flutter/material.dart';

class OnboardingV2Screen extends StatefulWidget {
  const OnboardingV2Screen({super.key});

  @override
  State<OnboardingV2Screen> createState() => _OnboardingV2ScreenState();
}

class _OnboardingV2ScreenState extends State<OnboardingV2Screen> {
  int currentStep = 0;
  String selectedRelationship = 'Uncle';
  String selectedDisplayTerm = 'Mama';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vansha Onboarding V2')),
      body: Stepper(
        currentStep: currentStep,
        onStepContinue: () {
          if (currentStep < 4) {
            setState(() => currentStep++);
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() => currentStep--);
          }
        },
        steps: [
          Step(
            title: const Text('Identity'),
            content: Column(
              children: const [
                TextField(decoration: InputDecoration(labelText: 'Legal Name')),
                TextField(decoration: InputDecoration(labelText: 'Display Name')),
                TextField(decoration: InputDecoration(labelText: 'Mother Tongue')),
              ],
            ),
          ),
          Step(
            title: const Text('Naming Intelligence'),
            content: Column(
              children: const [
                TextField(decoration: InputDecoration(labelText: 'Naming Convention Notes')),
              ],
            ),
          ),
          Step(
            title: const Text('Family Space'),
            content: const TextField(
              decoration: InputDecoration(labelText: 'Create Family Space'),
            ),
          ),
          Step(
            title: const Text('Immediate Family'),
            content: const Text('Quick add father / mother / spouse / child / siblings'),
          ),
          Step(
            title: const Text('Relationship Intelligence'),
            content: Column(
              children: [
                DropdownButtonFormField<String>(
                  value: selectedRelationship,
                  items: ['Father', 'Mother', 'Uncle', 'Aunt', 'Brother', 'Sister']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) => setState(() => selectedRelationship = value!),
                  decoration: const InputDecoration(labelText: 'Relationship'),
                ),
                DropdownButtonFormField<String>(
                  value: selectedDisplayTerm,
                  items: ['Uncle', 'Mama', 'Mamaji', 'Babai', 'Machan', 'Chettan', 'Other']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) => setState(() => selectedDisplayTerm = value!),
                  decoration: const InputDecoration(labelText: 'How do you call them?'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
