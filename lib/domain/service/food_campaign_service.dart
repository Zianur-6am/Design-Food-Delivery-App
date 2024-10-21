import 'package:design_food_delivery_app/domain/models/food_campaign_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/food_campaign_service_interface.dart';

class FoodCampaignService implements FoodCampaignServiceInterface {
  HomeRepositoryInterface homeRepositoryInterface;

  FoodCampaignService({required this.homeRepositoryInterface});

  @override
  Future<List<FoodCampaignModel>?> getFoodCampaign() async{
    return await homeRepositoryInterface.getFoodCampaign();
  }

}