import 'package:flutter/material.dart';

class PepperoniBottomItemBar {
  final String label;
  final IconData icon;
  final IconData activeicon;
  final int countBadge;

  PepperoniBottomItemBar({
    required this.label,
    required this.icon,
    required this.activeicon,
    this.countBadge = 0,
  });
}
