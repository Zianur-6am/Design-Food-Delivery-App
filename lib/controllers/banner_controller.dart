

import 'package:design_food_delivery_app/domain/models/banner_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository_interface.dart';
import 'package:design_food_delivery_app/domain/service/banner_service.dart';
import 'package:design_food_delivery_app/domain/service/banner_service_interface.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  List<Banners> bannerList = [];

  int currentPage = 0;

  BannerServiceInterface bannerServiceInterface;

  BannerController({required this.bannerServiceInterface});

  Future<void> getBannerList() async {

    try{

      List<Banners>? fetchedList = await bannerServiceInterface.getBanner();

      // print('BannerList==============================>${fetchedList}');

      if(fetchedList != null){
        bannerList = fetchedList;
      }
      else{
        bannerList = [];
      }

      update();
    }catch(e){
      print('Error fetching banner: $e');
    }


  }


  void updatePageNumber(int value){

    currentPage = value;
    update();
  }


}