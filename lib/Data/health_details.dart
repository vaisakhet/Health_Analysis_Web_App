import 'package:web_app/Model/health_model.dart';

class HealthDetails {
  final healthData =  [
    HealthModel(icon: 'assets/icons/burn.png' , value: '305', title: "Calories burned"),
    HealthModel(icon: "assets/icons/steps.png", value: "10,983", title: "Step"),
    HealthModel(icon: "assets/icons/distance.png", value: "7Km", title: "Distance"),
    HealthModel(icon: "assets/icons/sleep.png", value: "7h48m", title: "Sleep")
  ];
}