import 'package:flutter/material.dart';
import 'package:web_app/Data/health_details.dart';
import 'package:web_app/Widgets/custom_cart_widget.dart';
import 'package:web_app/utils/responsive.dart';

class ActivityDetailsCartWidget extends StatelessWidget {
  const ActivityDetailsCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var data = HealthDetails();
    return GridView.builder(
      itemCount: data.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context)? 2: 4, crossAxisSpacing: 15, mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return CustomCard(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              data.healthData[index].icon,
              width: 40,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                data.healthData[index].value,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Text(
              data.healthData[index].title,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            )
          ],
        ));
      },
    );
  }
}
