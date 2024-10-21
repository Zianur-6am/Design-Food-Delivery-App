import 'package:design_food_delivery_app/domain/models/food_campaign_model.dart';

abstract class FoodCampaignServiceInterface {
  Future<List<FoodCampaignModel>?> getFoodCampaign();
}