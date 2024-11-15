import 'package:finalprojectaon/Controller/tabBar_controller.dart';
import 'package:finalprojectaon/Screens/home_page.dart';
import 'package:finalprojectaon/Screens/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tapbar extends StatefulWidget {
  final List<String> text;

  Tapbar({
    required this.text,
  });

  @override
  State<Tapbar> createState() => _TapbarState();
}

class _TapbarState extends State<Tapbar> {
  // Initialize the TabbarController using GetX
  final TabbarController tabController = Get.put(TabbarController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.text.map((item) {
          int index = widget.text.indexOf(item);  // Get the index of the current tab

          return Obx(() {
            // Get the color of the tab based on its index
            Color currentColor = tabController.tabcolors[index];

            return GestureDetector(
              onTap: () {
                // When a tab is clicked, select it and navigate
                tabController.selectedTab(index);

                // Navigate to the next page based on the tab index
                // Here we navigate to a different screen depending on the index
                if (index == 0) {
                  Get.to(() => SettingView()); // Navigate to PageOne
                } else if (index == 1) {
                  Get.to(() => HomePage()); // Navigate to PageTwo
                } else if (index == 2) {
                  Get.to(() => ()); // Navigate to PageThree
                }
              },
              child: Container(
                width: 90,
                height: 32,
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  color: currentColor,  // Use dynamic color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    item,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xff5376AC),  // Text color
                    ),
                  ),
                ),
              ),
            );
          });
        }).toList(),
      ),
    );
  }
}
