// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navigui/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const NaviguiApp());

    // Verify that the app loads with bottom navigation
    expect(find.byType(BottomNavigationBar), findsOneWidget);

    // Verify we have 4 navigation items
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Jobs'), findsOneWidget);
    expect(find.text('Learn'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
