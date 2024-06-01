import 'package:flutter/material.dart';
import 'package:web_app/Widgets/custom_cart_widget.dart';

class SummeryDetailsWidget extends StatelessWidget {
  const SummeryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      colors: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal", "305"),
          buildDetails("Step", "10352"),
          buildDetails("Distance", "7km"),
          buildDetails("Sleep", "8hr"),
        ],
      ),
    );
  }

  buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
