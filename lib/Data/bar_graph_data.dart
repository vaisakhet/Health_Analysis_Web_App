import 'package:flutter/material.dart';
import 'package:web_app/Model/bar_graph_model.dart';
import 'package:web_app/Model/graph_model.dart';

class BarGraphData {
  final data = [
    BarGraphModel(label: "Activity Level", color: Color(0xFFFEB95A), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 4),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 3),
    ]),
    BarGraphModel(label: "Activity Level", color: Color(0xFFF2C8ED), graph: [
      GraphModel(x: 0, y: 5),
      GraphModel(x: 1, y: 7),
      GraphModel(x: 2, y: 8),
      GraphModel(x: 3, y: 10),
      GraphModel(x: 4, y: 7),
      GraphModel(x: 5, y: 10),
    ]),
    BarGraphModel(label: "Activity Level", color: Color(0xFF20AEF3), graph: [
      GraphModel(x: 0, y: 2),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 4),
      GraphModel(x: 3, y: 7),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 8),
    ]),
  ];
  final lable =['M','T','W','T','F','S'];
}
