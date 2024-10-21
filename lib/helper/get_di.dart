
import 'dart:convert';

import 'package:design_food_delivery_app/features/home/controller/banner/banner_controller.dart';
import 'package:design_food_delivery_app/features/home/controller/categories/category_controller.dart';
import 'package:design_food_delivery_app/features/home/controller/foodcampaign/food_campaign_controller.dart';
import 'package:design_food_delivery_app/features/home/controller/popularfood/popular_food_controller.dart';
import 'package:design_food_delivery_app/features/theme/controller/theme_controller.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/banner/banner_service.dart';
import 'package:design_food_delivery_app/features/home/domain/service/banner/banner_service_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/categories/category_service.dart';
import 'package:design_food_delivery_app/features/home/domain/service/categories/category_service_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/foodcampaign/food_campaign_service.dart';
import 'package:design_food_delivery_app/features/home/domain/service/foodcampaign/food_campaign_service_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/popularfood/popular_food_service.dart';
import 'package:design_food_delivery_app/features/home/domain/service/popularfood/popular_food_service_interface.dart';
import 'package:design_food_delivery_app/features/home/widget/food_campaign.dart';
import 'package:get/get.dart';

void init() async {

  //Repository Interface
  HomeRepositoryInterface homeRepositoryInterface = HomeRepository();
  Get.lazyPut(() => homeRepositoryInterface);



  //Service Interface
  BannerServiceInterface bannerServiceInterface = BannerService(homeRepositoryInterface: homeRepositoryInterface);
  Get.lazyPut(() => bannerServiceInterface);

  CategoryServiceInterface categoryServiceInterface = CategoryService(homeRepositoryInterface: homeRepositoryInterface);
  Get.lazyPut(() => categoryServiceInterface);

  FoodCampaignServiceInterface foodCampaignServiceInterface = FoodCampaignService(homeRepositoryInterface: homeRepositoryInterface);
  Get.lazyPut(() => foodCampaignServiceInterface);

  PopularFoodServiceInterface popularFoodServiceInterface = PopularFoodService(homeRepositoryInterface: homeRepositoryInterface);
  Get.lazyPut(() => popularFoodServiceInterface);



  //Controller
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => BannerController(bannerServiceInterface: bannerServiceInterface));
  Get.lazyPut(() => CategoryController(categoryServiceInterface: categoryServiceInterface));
  Get.lazyPut(() => FoodCampaignController(foodCampaignServiceInterface: foodCampaignServiceInterface));
  Get.lazyPut(() => PopularFoodController(popularFoodServiceInterface: popularFoodServiceInterface));


}
