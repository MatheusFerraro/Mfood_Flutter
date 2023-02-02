import 'package:flutter/material.dart';
import 'package:mfood/src/features/dashboard/view/pages/dashboard_page.dart';

void main() {
  runApp(const MfoodApp());
}

class MfoodApp extends StatelessWidget {
  const MfoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mfood',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}
