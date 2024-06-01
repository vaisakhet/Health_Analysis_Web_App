import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:web_app/constand.dart';

class ChartData {
  final pieChartSelectionData = [
    PieChartSectionData(
        color: primaryColor, value: 25, showTitle: false, radius: 25),
    PieChartSectionData(
        color: Color.fromARGB(245, 232, 98, 244), value: 20, showTitle: false, radius: 22),
    PieChartSectionData(
        color: Color.fromARGB(255, 15, 7, 240),
        value: 10,
        showTitle: false,
        radius: 19),
    PieChartSectionData(
        color: Color.fromARGB(255, 240, 121, 10),
        value: 15,
        showTitle: false,
        radius: 16),
    PieChartSectionData(
        color: Color.fromARGB(252, 3, 141, 47),
        value: 25,
        showTitle: false,
        radius: 16),
  ];
}
