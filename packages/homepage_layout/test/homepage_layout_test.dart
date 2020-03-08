import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:homepage_layout/homepage_layout.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(HomepageLayout(
      primaryList: <Widget>[
        Text('Primary Content')
      ],
      secondaryList: <Widget>[
        Text('Secondary Content')
      ],
    ));
  });
}
