import 'package:flutter/material.dart';

class PetstoreWidget extends StatefulWidget {
  const PetstoreWidget({super.key});

  @override
  State<PetstoreWidget> createState() => _PetstoreWidgetState();
}

class _PetstoreWidgetState extends State<PetstoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Pet Stores'),
      ),
    );
  }
}
