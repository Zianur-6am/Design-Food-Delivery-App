import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChange extends StatelessWidget {
  // const ThemeChange({super.key});

  ThemeController themeController = Get.find();

  ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Theme'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: (){
                themeController.toggleTheme();
              },
              child: const Text('Change Theme'),)
          ],
        ),
      ),
    );
  }
}
