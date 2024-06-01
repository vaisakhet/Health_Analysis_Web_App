import 'package:flutter/material.dart';
import 'package:web_app/Widgets/dashboard_widget.dart';
import 'package:web_app/Widgets/slide_menu.dart';
import 'package:web_app/Widgets/summary_widget.dart';
import 'package:web_app/utils/responsive.dart';

class MAinScreen extends StatefulWidget {
  const MAinScreen({super.key});

  @override
  State<MAinScreen> createState() => _MAinScreenState();
}

class _MAinScreenState extends State<MAinScreen> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SlideMenu(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(child: SlideMenu()),
              ),
            const Expanded(
              flex: 7,
              child: SizedBox(child: DashboardWidget()),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: SizedBox(
                  child: SummaryWidget(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
