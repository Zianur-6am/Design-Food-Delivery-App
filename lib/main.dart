
import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:design_food_delivery_app/features/nav_bar/screen/bottom_nav_bar.dart';
import 'package:design_food_delivery_app/features/home/screen/fd_home_screen.dart';
import 'package:design_food_delivery_app/themes/dark_theme.dart';
import 'package:design_food_delivery_app/themes/light_theme.dart';
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

        ///For in app theme change
        theme: themeController.darkTheme ? dark : light,


        ///Routing
        // initialRoute: '/home',

        getPages: [
          GetPage(name: '/home', page: ()=> const FDHome())
        ],

        home: BottomNavBar(),
      );
    },);
  }
}


