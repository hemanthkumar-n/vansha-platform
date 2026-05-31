import 'package:flutter_test/flutter_test.dart';
import 'package:vansha_mobile/main.dart';

void main() {
  testWidgets('Vansha app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const VanshaApp());

    expect(find.text('Relationship Intelligence'), findsOneWidget);
  });
}
