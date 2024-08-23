import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_app/Data/bar_graph_data.dart';
import 'package:web_app/Model/graph_model.dart';
import 'package:web_app/Widgets/custom_cart_widget.dart';
import 'package:web_app/utils/responsive.dart';

class BarGraphCart extends StatelessWidget {
  const BarGraphCart({super.key});

  @override
  Widget build(BuildContext context) {
    final bargraphData = BarGraphData();

    return GridView.builder(
      itemCount: bargraphData.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 1 : 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
          childAspectRatio: 5 / 4),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bargraphData.data[index].label,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      point: bargraphData.data[index].graph,
                      color: bargraphData.data[index].color,
                    ),
                    borderData: FlBorderData(border: const Border()),
                    gridData: const FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                bargraphData.lable[value.toInt()],
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            );
                          },
                        ),
                      ),
                      leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData>? _chartGroups(
      {required List<GraphModel> point, required Color color}) {
    return point
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
              BarChartRodData(
                  toY: point.y,
                  width: 12,
                  color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.5))
            ]))
        .toList();
  }

  /// push
}
