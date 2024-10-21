import 'package:design_food_delivery_app/features/home/domain/models/foodcampaign/food_campaign_model.dart';

abstract class FoodCampaignServiceInterface {
  Future<List<FoodCampaignModel>?> getFoodCampaign();
}