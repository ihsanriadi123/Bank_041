import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:form_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Login Test',() {
    testWidgets('Verify Correct Username and Password to Login Screen',(tester) async {
      app.main();
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(0),'ihsan putra');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(1),'03');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(2),'5 mei 2004');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(3),'laki laki');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(4),'081906801758');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(5),'sma');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(6),'islam');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(7),'badminton');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(8),'rangkasbitung');
      await Future.delayed(const Duration(seconds:1));
      await tester.enterText(find.byType(TextField).at(9),'private');
      await Future.delayed(const Duration(seconds:1));
      await tester.tap(find.text("Submit Data"));
      await Future.delayed(const Duration(seconds:1));
      await tester.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 1));
      expect(find.byType(app.MyApp),findsOneWidget);
    });
  });
}