import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simba/widgets/bottom_nav_bar/_frosted_glass_bottom_nav_bar.dart';

void main() {
  testWidgets('FrostedGlassBottomNavBar test', (WidgetTester tester) async {
    int tappedIndex = -1;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: FrostedGlassBottomNavBar(
            selectedIndex: 0,
            onItemTapped: (index) {
              tappedIndex = index;
            },
          ),
        ),
      ),
    );

    // Verify the initial state
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

    // Tap on the search icon
    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    // Verify that the tappedIndex has been updated
    expect(tappedIndex, 1);
  });
}
