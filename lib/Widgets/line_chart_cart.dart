import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_app/Data/line_chart_data.dart';
import 'package:web_app/Widgets/custom_cart_widget.dart';
import 'package:web_app/constand.dart';
import 'package:web_app/utils/responsive.dart';

class LineChartCart extends StatelessWidget {
  const LineChartCart({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Steps Overview"),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: Responsive.isMobile(context)? 16/11: 16 / 6,
              child: LineChart(
                LineChartData(
                  lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[400]),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return data.leftTitle[value.toInt()] != null
                              ? Text(
                                  data.leftTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[400]),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      color: selectionColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                          
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ]),
                        show: true,
                      ),
                      dotData: const FlDotData(show: false),
                      spots: data.sports
                    )
                  ],
                  minX: 0,
                  maxX: 120,
                  maxY: 105,
                  minY: -5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
