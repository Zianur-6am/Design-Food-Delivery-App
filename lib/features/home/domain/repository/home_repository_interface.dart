
import 'package:design_food_delivery_app/features/home/domain/models/banner/banner_model.dart';
import 'package:design_food_delivery_app/features/home/domain/models/categories/category_model.dart';
import 'package:design_food_delivery_app/features/home/domain/models/foodcampaign/food_campaign_model.dart';
import 'package:design_food_delivery_app/features/home/domain/models/popularfood/popular_food_model.dart';

abstract class HomeRepositoryInterface {

  Future<List<CategoriesModel>?> getCategory();
  Future<List<FoodCampaignModel>?> getFoodCampaign();
  Future<List<Products>?> getPopularFood();
  Future<List<Banners>?> getBanner();

}