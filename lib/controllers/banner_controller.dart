

import 'package:design_food_delivery_app/domain/models/banner_model.dart';
import 'package:design_food_delivery_app/domain/repository/home_repository.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  List<Banners> bannerList = [];

  int currentPage = 0;

  Future<void> getBannerList() async {

    List<Banners>? fetchedList = await HomeRepository.getBanner();

    // print('BannerList==============================>${fetchedList}');

    if(fetchedList != null){
      bannerList = fetchedList;
    }
    else{
      bannerList = [];
    }

    update();

  }


  void updatePageNumber(int value){

    currentPage = value;
    update();
  }


}