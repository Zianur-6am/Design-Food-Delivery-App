import 'package:design_food_delivery_app/features/home/domain/models/foodcampaign/food_campaign_model.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/features/home/domain/service/foodcampaign/food_campaign_service_interface.dart';

class FoodCampaignService implements FoodCampaignServiceInterface {
  HomeRepositoryInterface homeRepositoryInterface;

  FoodCampaignService({required this.homeRepositoryInterface});

  @override
  Future<List<FoodCampaignModel>?> getFoodCampaign() async{
    return await homeRepositoryInterface.getFoodCampaign();
  }

}