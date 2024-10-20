
import 'package:design_food_delivery_app/domain/models/food_campaign_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FoodCampaignController extends GetxController{
  List<FoodCampaignModel> foodCampaignList = [];

  Future<void> getFoodsCampaign() async{

    try{
      List<FoodCampaignModel>? fetchedList = await HomeRepository.getFoodCampaign();

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