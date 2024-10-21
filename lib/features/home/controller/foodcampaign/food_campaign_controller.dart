
import 'package:design_food_delivery_app/features/home/domain/models/foodcampaign/food_campaign_model.dart';
import 'package:design_food_delivery_app/features/home/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/features/home/domain/service/foodcampaign/food_campaign_service.dart';
import 'package:design_food_delivery_app/features/home/domain/service/foodcampaign/food_campaign_service_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FoodCampaignController extends GetxController{

  List<FoodCampaignModel> foodCampaignList = [];
  FoodCampaignServiceInterface foodCampaignServiceInterface;

  FoodCampaignController({required this.foodCampaignServiceInterface});


  Future<void> getFoodsCampaign() async{

    try{
      List<FoodCampaignModel>? fetchedList = await foodCampaignServiceInterface.getFoodCampaign();

      // print('======================>>>>>>>>>>>>>${fetchedList}');


      if(fetchedList != null){
        foodCampaignList = fetchedList;
      }
      else{
        foodCampaignList = [];
      }

      update();
    }catch(e){
      if (kDebugMode) {
        print('Error fetching food campaign: $e');
      }
    }
  }

}