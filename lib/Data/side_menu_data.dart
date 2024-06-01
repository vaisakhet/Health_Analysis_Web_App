import 'package:flutter/material.dart';
import 'package:web_app/Model/menu_model.dart';

class SlideMenuData {
  final menu = <MenuModel> [
    MenuModel(icon: Icons.home, title: "Dashboard"),
    MenuModel(icon: Icons.home, title: "Profile"),
    MenuModel(icon: Icons.run_circle, title: "Exersice"),
    MenuModel(icon: Icons.settings, title: "Settings"),
    MenuModel(icon: Icons.history, title: "History"),
     MenuModel(icon: Icons.logout, title: "LogOut"),
  ];
}