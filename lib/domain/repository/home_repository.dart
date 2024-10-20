import 'dart:convert';
import 'package:design_food_delivery_app/domain/models/banner_model.dart';
import 'package:design_food_delivery_app/domain/models/category_model.dart';
import 'package:design_food_delivery_app/domain/models/food_campaign_model.dart';
import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/utils/app_constants.dart';
import 'package:http/http.dart' as http;

class HomeRepository implements HomeRepositoryInterface {
  static var client = http.Client();

  ///category
 Future<List<CategoriesModel>?> getCategory() async {
    List<CategoriesModel>? categoryList;
    var response = await client.get(
        Uri.parse('${AppConstants.baseUrl}${AppConstants.categoryUri}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'zoneId': '[1]',
          'latitude': '23.735129',
          'longitude': '90.425614'
        });
    if (response.statusCode == 200) {
      categoryList = [];
      // print('==========================================>>>>>>>>>>>>>>>>>>>>>>>>>${response.body}');
      // print('-----------------(JSON DECODE)----${jsonDecode(response.body)}');

      // List<Map<String,dynamic>> jsonString = jsonDecode(response.body); //doesn't work

      List<dynamic> jsonString = jsonDecode(response.body);
      // dynamic jsonString = jsonDecode(response.body);//works

      jsonString.forEach((category) {
        categoryList!.add(CategoriesModel.fromJson(category));
      });

      // print('${categoryList}');

      return categoryList;
    }

    return null;
  }

  ///campaign
  Future<List<FoodCampaignModel>?> getFoodCampaign() async {
    List<FoodCampaignModel>? foodCampaignList;
    var response = await client.get(
        Uri.parse('${AppConstants.baseUrl}${AppConstants.foodCampaignUri}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'zoneId': '[1]',
          'latitude': '23.735129',
          'longitude': '90.425614'
        });
    if (response.statusCode == 200) {
      foodCampaignList = [];
      // print('==========================================>>>>>>>>>>>>>>>>>>>>>>>>>${response.body}');
      // print('-----------------(JSON DECODE)----${jsonDecode(response.body)}');

      // List<Map<String,dynamic>> jsonString = jsonDecode(response.body); //doesn't work

      List<dynamic> jsonString = jsonDecode(response.body);
      // dynamic jsonString = jsonDecode(response.body);

      jsonString.forEach((food) {
        foodCampaignList!.add(FoodCampaignModel.fromJson(food));
      });

      // print('${foodCampaignList}');

      return foodCampaignList;
    }

    return null;
  }

  ///popular food
  Future<List<Products>?> getPopularFood() async {
    PopularFoodModel? popularFoodModel;
    var response = await client.get(
        Uri.parse('${AppConstants.baseUrl}${AppConstants.popularProductUri}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'zoneId': '[1]',
          'latitude': '23.735129',
          'longitude': '90.425614'
        });
    if (response.statusCode == 200) {
      // print('==========================================>>>>>>>>>>>>>>>>>>>>>>>>>${response.body}');
      // print('-----------------(JSON DECODE)----${jsonDecode(response.body)}');

      dynamic jsonString = jsonDecode(response.body);
      // Map<String,dynamic> jsonString = jsonDecode(response.body);

      popularFoodModel = PopularFoodModel.fromJson(jsonString);

      // print('==========================================================>${popularFoodModel}');

      return popularFoodModel.products;
    }

    return null;
  }





  ///banner
  Future<List<Banners>?> getBanner() async {
    BannerModel? bannerModel;
    var response = await client.get(
        Uri.parse('${AppConstants.baseUrl}${AppConstants.bannerUri}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'zoneId': '[1]',
          'latitude': '23.735129',
          'longitude': '90.425614'
        });
    if (response.statusCode == 200) {
      dynamic jsonString = jsonDecode(response.body);

      bannerModel = BannerModel.fromJson(jsonString);

      // print('==========================================================>${bannerModel}');


      return bannerModel.banners;
    }

    return null;
  }
}
