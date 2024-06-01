import 'package:flutter/material.dart';
import 'package:web_app/constand.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? colors;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, required this.child, this.colors, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colors ?? cardBackgroundColor,
      ),
      padding: padding ?? const EdgeInsets.all(12),
      child: child,
    );
  }
}
