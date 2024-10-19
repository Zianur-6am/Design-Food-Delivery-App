
import 'package:design_food_delivery_app/models/food_campaign_model.dart';
import 'package:design_food_delivery_app/repository/home_repository.dart';
import 'package:get/get.dart';

class FoodCampaignController extends GetxController{
  List<FoodCampaignModel> foodCampaignList = [];

  Future<void> getFoodsCampaign() async{

    try{
      List<FoodCampaignModel>? fetchedList = await HomeRepository.getFoodCampaign();

      if(fetchedList != null){
        foodCampaignList = fetchedList;
      }
      else{
        foodCampaignList = [];
      }

      update();
    }catch(e){
      print('Error fetching food campaign: $e');
    }
  }

}