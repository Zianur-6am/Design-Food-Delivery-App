import 'package:design_food_delivery_app/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChange extends StatelessWidget {
  // const ThemeChange({super.key});

  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Theme'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                themeController.toggleTheme();
              },
              child: Text('Dark Theme'),),

            SizedBox(width: 20,),

            ElevatedButton(
              onPressed: (){
                themeController.toggleTheme();
              },
              child: Text('Light Theme'),)
          ],
        ),
      ),
    );
  }
}
