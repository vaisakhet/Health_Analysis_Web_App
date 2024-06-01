import 'package:flutter/material.dart';
import 'package:web_app/Widgets/activity_details_card_widget.dart';
import 'package:web_app/Widgets/bar_graph_chart_widget.dart';
import 'package:web_app/Widgets/header_widget.dart';
import 'package:web_app/Widgets/line_chart_cart.dart';
import 'package:web_app/Widgets/summary_widget.dart';
import 'package:web_app/utils/responsive.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      primary: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 18),
              const Flexible(fit: FlexFit.loose, child: HeaderWidget()),
              const SizedBox(height: 18),
              const Flexible(
                  fit: FlexFit.loose, child: ActivityDetailsCartWidget()),
              const SizedBox(height: 18),
              const Flexible(fit: FlexFit.loose, child: LineChartCart()),
              const SizedBox(height: 18),
              const Flexible(fit: FlexFit.loose, child: BarGraphCart()),
              const SizedBox(height: 18),
              if (Responsive.isTablet(context))
                const Flexible(fit: FlexFit.loose, child: SummaryWidget())
            ],
          ),
        ),
      ),
    );
  }
}
