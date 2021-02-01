import 'package:flutter/material.dart';

import 'screens/prebuilt_widgets_demo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Weather Client - Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrebuiltWidgetsScreen(),
    );
  }
}
