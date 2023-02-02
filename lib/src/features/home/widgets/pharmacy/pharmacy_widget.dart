import 'package:flutter/material.dart';

class PharmacyWidget extends StatefulWidget {
  const PharmacyWidget({super.key});

  @override
  State<PharmacyWidget> createState() => _PharmacyWidgetState();
}

class _PharmacyWidgetState extends State<PharmacyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Pharmacy'),
      ),
    );
  }
}
