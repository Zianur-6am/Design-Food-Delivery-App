
import 'dart:convert';

import 'package:design_food_delivery_app/controllers/banner_controller.dart';
import 'package:design_food_delivery_app/controllers/category_controller.dart';
import 'package:design_food_delivery_app/controllers/popular_food_controller.dart';
import 'package:design_food_delivery_app/controllers/theme_controller.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/banner_service.dart';
import 'package:design_food_delivery_app/domain/service/banner_service_interface.dart';
import 'package:design_food_delivery_app/widget/food_campaign.dart';
import 'package:get/get.dart';

void init() async {

  //Repository Interface
  HomeRepositoryInterface homeRepositoryInterface = HomeRepository();
  Get.lazyPut(() => homeRepositoryInterface);



  //Service Interface
  BannerServiceInterface bannerServiceInterface = BannerService();
  Get.lazyPut(() => bannerServiceInterface);
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => ThemeController());



  //Controller
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => BannerController());
  Get.lazyPut(() => CategoryController());
  Get.lazyPut(() => FoodCampaign());
  Get.lazyPut(() => PopularFoodController());


}
