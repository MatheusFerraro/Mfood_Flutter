import 'package:flutter/material.dart';

class DrinkWidget extends StatefulWidget {
  const DrinkWidget({super.key});

  @override
  State<DrinkWidget> createState() => _DrinkWidgetState();
}

class _DrinkWidgetState extends State<DrinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Drinks'),
      ),
    );
  }
}
