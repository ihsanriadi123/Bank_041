import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'ihsan putra',
          identitynumber: '03',
          birthdate: '05 mei 2004',
          gender: 'laki laki',
          phonenumber: '081906801758',
          lasteducation: 'sma',
          religion: 'islam',
          job: 'badminton',
          address: 'rangkasbitung',
          accounttype: 'private',
        ),
      ),
    );

    expect(find.text('Name: ihsan putra'), findsOneWidget);
    expect(find.text('Identity Number: 03'), findsOneWidget);
    expect(find.text('Birht Date: 05 mei 2004'), findsOneWidget);
    expect(find.text('Gender: laki laki'), findsOneWidget);
    expect(find.text('Phone Number: 081906801758'), findsOneWidget);
    expect(find.text('Last Education: sma'), findsOneWidget);
    expect(find.text('Religion: islam'), findsOneWidget);
    expect(find.text('Job: badminton'), findsOneWidget);
    expect(find.text('Address: rangkasbitung'), findsOneWidget);
    expect(find.text('Account Type: private'), findsOneWidget);
  });
}