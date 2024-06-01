import 'package:flutter/material.dart';
import 'package:web_app/Widgets/pie_chart_widget.dart';
import 'package:web_app/Widgets/sheduled_widget.dart';
import 'package:web_app/Widgets/summery_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: const Column(
        children: [
          SizedBox(height: 20),
          Flexible(fit: FlexFit.loose, child: Chart()),
          Text(
            "Summary",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SummeryDetailsWidget(),
          ),
          SizedBox(height: 40),
          Sheduled()
        ],
      ),
    );
  }
}
