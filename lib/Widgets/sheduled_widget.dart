import 'package:flutter/material.dart';
import 'package:web_app/Data/sheduled_data.dart';
import 'package:web_app/Widgets/custom_cart_widget.dart';

class Sheduled extends StatelessWidget {
  const Sheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final data = SheduledData();
    return Column(
      children: [
        const Text(
          "Sheduled",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const SizedBox(height: 12),
        for (var index = 0; index < data.sheduled.length; index++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCard(
                colors: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.sheduled[index].title,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              data.sheduled[index].date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                        const Icon(Icons.more,color: Colors.white,)
                      ],
                    )
                  ],
                )),
          )
      ],
    );
  }
}
