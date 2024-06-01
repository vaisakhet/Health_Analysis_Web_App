import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_app/Data/pie_chart_data.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                // centerSpaceColor: 70,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: pieChartData.pieChartSelectionData),
          ),
          const Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "70%",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 0.5),
              ),
              SizedBox(height: 8),
              Text(
                "of 100",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ))
        ],
      ),
    );
  }
}
