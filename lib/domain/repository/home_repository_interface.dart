import 'package:design_food_delivery_app/domain/models/banner_model.dart';
import 'package:design_food_delivery_app/domain/models/category_model.dart';
import 'package:design_food_delivery_app/domain/models/food_campaign_model.dart';
import 'package:design_food_delivery_app/domain/models/popular_food_model.dart';

abstract class HomeRepositoryInterface {

  Future<List<CategoriesModel>?> getCategory();
  Future<List<FoodCampaignModel>?> getFoodCampaign();
  Future<List<Products>?> getPopularFood();
  Future<List<Banners>?> getBanner();

}