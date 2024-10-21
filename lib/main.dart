import 'package:design_food_delivery_app/controllers/banner_controller.dart';
import 'package:design_food_delivery_app/controllers/category_controller.dart';
import 'package:design_food_delivery_app/controllers/food_campaign_controller.dart';
import 'package:design_food_delivery_app/controllers/popular_food_controller.dart';
import 'package:design_food_delivery_app/controllers/theme_controller.dart';
import 'package:design_food_delivery_app/screens/bottom_nav_bar.dart';
import 'package:design_food_delivery_app/screens/fd_home.dart';
import 'package:design_food_delivery_app/theme/dark_theme.dart';
import 'package:design_food_delivery_app/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/get_di.dart' as di;




void main() {
  di.init();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder( builder: (ThemeController themeController){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Design Task 1',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // ),

        theme: themeController.darkTheme ? dark : light,

        ///Routing
        // initialRoute: '/home',

        getPages: [
          GetPage(name: '/home', page: ()=> FDHome())
        ],

        home: BottomNavBar(),
      );
    },);
  }
}


