import 'package:flutter/material.dart';
import 'package:web_app/Data/side_menu_data.dart';
import 'package:web_app/constand.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SlideMenuData();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: ListView.builder(
            itemCount: data.menu.length,
            itemBuilder: (context, index) {
              return buildMenuEntry(data, index);
            }),
      ),
    );
  }

  buildMenuEntry(SlideMenuData data, int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? selectionColor : Colors.transparent),
      child: GestureDetector(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  color: isSelected ? Colors.black : Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
