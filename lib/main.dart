import 'package:flutter/material.dart';

import 'breaking_bad_screen.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/breakingbad', routes: {
    '/breakingbad': (context) => BreakingBadScreen(),
  }));
}
